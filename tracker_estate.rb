# frozen_string_literal: true

class TrackerEstate
  def initialize
    # this is the order the trackers will be in the finished tables
    @trackers = %w[
      js
      node
      android
      ios
      react_native
      flutter
      python
      ruby
      php
      java
      cpp
      roku
      google_amp
      golang
      unity
      dotnet
      lua
      scala
      rust
      web_view
      pixel
    ]

    @tracker_names = {
      'js' => 'JavaScript',
      'node' => 'Node.js',
      'android' => 'Android',
      'ios' => 'iOS',
      'react_native' => 'React Native',
      'flutter' => 'Flutter',
      'python' => 'Python',
      'ruby' => 'Ruby',
      'php' => 'PHP',
      'java' => 'Java',
      'cpp' => 'C++',
      'roku' => 'Roku',
      'google_amp' => 'AMP',
      'golang' => 'Golang',
      'unity' => 'Unity',
      'dotnet' => '.NET',
      'lua' => 'Lua',
      'scala' => 'Scala',
      'rust' => 'Rust',
      'web_view' => 'WebView',
      'pixel' => 'Pixel'
    }

    @features_file = 'all_properties/features.md'
    @sessions_file = 'all_properties/session.md'
    @emitter_config_file = 'all_properties/emitter_network_config.md'
    @subject_config_file = 'all_properties/subject_config.md'
    @tracker_config_file = 'all_properties/tracker_config.md'
    @callbacks_file = 'all_properties/callbacks.md'
    @devrel_file = 'all_properties/devrel.md'
    @tests_file = 'all_properties/tests_ci.md'
    @events_file = 'all_properties/events.md'
    @entities_file = 'all_properties/entities.md'
    @general_file = 'all_properties/general.md'
    @important_file = 'all_properties/important.md'
  end

  def make_a_single_table(features_filename)
    features_list = File.read(features_filename).split("\n")
    features_list.map! { |line| line.split('|') }

    tracker_hash = Hash.new { |hash, key| hash[key] = [] }

    @trackers.each do |tracker|
      file = File.read("tracker_details/#{tracker}.md").split("\n")
      file.map! { |line| line.split('|') }

      features_list.each_with_index do |feature, i|
        # skips the title line for each properties file
        next if i.zero?

        feature_is_present = false
        file.each do |line|
          next if line[0].nil? || line[0].include?('#')

          next unless feature[0].strip == line[0].strip

          option = line[1].strip
          option = 'yes' if %w[y Y Yes YES].include?(option)
          option = 'no' if %w[n N No NO].include?(option)

          tracker_hash[tracker] << if line.length == 3
                                     # allows for a comment
                                     [option, line[2].strip]
                                   else
                                     [option, '']
                                   end

          feature_is_present = true
        end

        tracker_hash[tracker] << ['', ''] unless feature_is_present
      end
    end

    add_tracker_name_to_start(tracker_hash)

    html_table = make_array_of_html_table_parts(combine_lists(features_list, tracker_hash).transpose)
    "#{html_table.flatten.join}</tbody></table>"
  end

  def read_tracker_details(tracker); end

  def add_tracker_name_to_start(dict)
    dict.each do |k, v|
      v.unshift(@tracker_names[k])
    end
  end

  def combine_lists(first_column, tracker_hash)
    all_the_lists = [first_column]
    @trackers.each do |tracker|
      all_the_lists << tracker_hash[tracker]
    end
    all_the_lists
  end

  def make_array_of_html_table_parts(table)
    html_table = []

    table.each_with_index do |line, i|
      line_with_html = []
      if i.zero?
        line.each_with_index do |e, i|
          line_with_html << if i.zero?
                              "<th>#{e[0]}</th>"
                            else
                              "<th>#{e}</th>"
                            end
        end
        html_table << "<table><thead><tr>#{line_with_html.join}</tr></thead><tbody>"
      else
        line.each_with_index do |e, i|
          line_with_html << if i.zero?
                              property_to_html(e)
                            else
                              one_single_datapoint_to_html(e)
                            end
        end
        html_table << "<tr>#{line_with_html.join}</tr>"
      end
    end
    html_table
  end

  def property_to_html(property)
    if property.length == 1
      "<td class='description'>#{property[0]}</td>"
    else
      "<td class='description tooltip'>#{property[0]} *<span class='tooltiptext'>#{property[1]}</span></td>"
    end
  end

  def one_single_datapoint_to_html(entry)
    datapoint = entry[0]

    if datapoint.start_with? 'https://github'
      return "<td class='option'><a href=#{datapoint}>Github</a></td>"
    elsif datapoint.start_with? 'https://docs.snowplow'
      return "<td class='option'><a href=#{datapoint}>Docs</a></td>"
    end

    classes = ['option']
    classes << case datapoint
               when 'Actively Maintained'
                 'status am'
               when 'Maintained'
                 'status m'
               when 'Early Release'
                 'status er'
               when 'yes, but...'
                 'but'
               when ''
                 'no'
               else
                 datapoint.gsub('/', '')
               end

    return "<td class='#{classes.join(' ')}'>#{datapoint}</td>" if entry[1] == ''

    "<td class='#{classes.join(' ')} tooltip'>#{datapoint} *<span class='tooltiptext'>#{entry[1]}</span></td>"
  end

  def output_html_file
    output = '<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" />' \
              '<meta name="viewport" content="width=device-width, initial-scale=1.0" />' \
        '<title>Snowplow Tracker Estate</title><link rel="stylesheet" href="style.css"></head>' \
        '<body><h2>Snowplow Tracker Estate Overview</h2>' \
        "#{make_a_single_table(@general_file)}<br/>" \
        "#{make_a_single_table(@devrel_file)}<br/>" \
        "#{make_a_single_table(@tests_file)}<br/>" \
        "#{make_a_single_table(@features_file)}<br/>" \
        "#{make_a_single_table(@sessions_file)}<br/>" \
        "#{make_a_single_table(@emitter_config_file)}<br/>" \
        "#{make_a_single_table(@subject_config_file)}<br/>" \
        "#{make_a_single_table(@tracker_config_file)}<br/>" \
        "#{make_a_single_table(@callbacks_file)}<br/>" \
        "#{make_a_single_table(@events_file)}<br/>" \
        "#{make_a_single_table(@entities_file)}<br/>" \
        "<br/>On the roadmap, or should be:<br/>" \
        "#{make_a_single_table(@important_file)}<br/>" \
        "</body></html>\n"

    File.open('snowplow_tracker_estate.html', 'w') { |f| f.write(output) }
  end

  def add_new_property_to_trackers(insert_after_this_text, new_text)
    @trackers.each do |tracker|
      file = File.read("tracker_details/#{tracker}.md").split("\n")

      file.each_with_index do |line, i|
        if line.include? insert_after_this_text
          file.insert(i + 1, new_text)
          break
        end
      end

      File.open("tracker_details/#{tracker}.md", 'w') { |f| f.write(file.join("\n")) }
    end
  end

  def change_property_title(old_title, new_title)
    @trackers.each do |tracker|
      file = File.read("tracker_details/#{tracker}.md").split("\n")
      new_file = []

      file.each do |line|
        sections = line.split('|')
        new_file << if line.start_with? old_title
                      "#{new_title} |#{sections[1..].join('|')}"
                    else
                      sections.join('|')
                    end
      end

      File.open("tracker_details/#{tracker}.md", 'w') { |f| f.write(new_file.join("\n")) }
    end
  end
  
end

estate = TrackerEstate.new
# estate.change_property_title('Basic demo app', 'Basic demo app')

estate.output_html_file

# estate.add_new_property_to_trackers("Set domain sessionIndex", "Set user fingerprint | ")
