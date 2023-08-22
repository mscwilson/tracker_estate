class TrackerEstate

  def initialize
    @trackers = [
      "js", 
      "node", 
      "android", 
      "ios", 
      "react_native",
      "flutter",
      "python",
      "ruby",
      "php",
      "java",
      "cpp",
      "roku",
      "google_amp",
      "golang",
      "unity",
      "dotnet",
      "lua",
      "scala",
      "rust",
      "web_view"
    ]

    @tracker_names = {
      "js" => "JavaScript", 
      "node" => "Node.js", 
      "android" => "Android", 
      "ios" => "iOS", 
      "react_native" => "React Native",
      "flutter" => "Flutter",
      "python" => "Python",
      "ruby" => "Ruby",
      "php" => "PHP",
      "java" => "Java",
      "cpp" => "C++",
      "roku" => "Roku",
      "google_amp" => "AMP",
      "golang" => "Golang",
      "unity" => "Unity",
      "dotnet" => ".NET",
      "lua" => "Lua",
      "scala" => "Scala",
      "rust" => "Rust",
      "web_view" => "WebView"
    }

    @features_file = "all_properties/features.md"
    @sessions_file = "all_properties/session.md"
    @emitter_config_file = "all_properties/emitter_network_config.md"
    @subject_config_file = "all_properties/subject_config.md"
    @tracker_config_file = "all_properties/tracker_config.md"
    @callbacks_file = "all_properties/callbacks.md"
    @devrel_file = "all_properties/devrel.md"
    @tests_file = "all_properties/tests_ci.md"
  end

  def make_a_single_table(features_filename)
    features_list = File.read(features_filename).split("\n")

    tracker_hash = Hash.new { |hash, key| hash[key] = [] }

    @trackers.each do |tracker|
      file = File.read("tracker_details/#{tracker}.md").split("\n")
      file.map! { |line| line.split("|") }

      features_list.each_with_index do |feature, i|
        next if i == 0

        feature_is_present = false
        file.each do |line|
          next if line[0] == nil || line[0].include?("#") 

          if feature == line[0].strip
            tracker_hash[tracker] << line[1].strip
            feature_is_present = true
          end
        end

        if !feature_is_present
          tracker_hash[tracker] << ""
        end
      end
    end

    add_tracker_name_to_start(tracker_hash)

    html_table = make_array_of_html_table_parts(combine_lists(features_list, tracker_hash).transpose)
    html_table.flatten.join + "</tbody></table>"

  end

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
      if i == 0
        line_with_html = []
        line.each do |e|
          line_with_html << "<th>#{e}</th>"
        end
        html_table << "<table><thead><tr>#{line_with_html.join}</tr></thead><tbody>"
      else
        line_with_html = []
        line.each_with_index do |e, i|
          if i == 0
            line_with_html << "<td class='description'>#{e}</td>"
          else
            line_with_html << "<td class='#{e} option'>#{e}</td>"
          end
        end
        html_table << "<tr>#{line_with_html.join}</tr>"
      end
    end
    html_table
  end

  def output_html_file
    output = "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\" />" \
              "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />" \
        "<title>Snowplow Tracker Estate</title><link rel=\"stylesheet\" href=\"style.css\"></head>" \
        "<body><h2>Snowplow Tracker Estate Overview</h2>" \
        "#{make_a_single_table(@devrel_file)}<br/>" \
        "#{make_a_single_table(@tests_file)}<br/>" \
        "#{make_a_single_table(@features_file)}<br/>" \
        "#{make_a_single_table(@sessions_file)}<br/>" \
        "#{make_a_single_table(@emitter_config_file)}<br/>" \
        "#{make_a_single_table(@subject_config_file)}<br/>" \
        "#{make_a_single_table(@tracker_config_file)}<br/>" \
        "#{make_a_single_table(@callbacks_file)}<br/>" \
        "</body></html>"
        
    File.open("snowplow_tracker_estate.html", "w") { |f| f.write(output) }
  end

  def add_new_property_to_trackers(insert_after_this_text, new_text)
    @trackers.each do |tracker|
      file = File.read("tracker_details/#{tracker}.md").split("\n")

      file.each_with_index do |line, i|
        if line == insert_after_this_text
          file.insert(i+1, new_text)
          break
        end
      end

      File.open("tracker_details/#{tracker}.md", "w") { |f| f.write(test_file.join("\n")) }
    end
  end

end

estate = TrackerEstate.new
# estate.output_html_file
estate.add_new_property_to_trackers("Session pausable | ", "Media tracking | ")
estate.add_new_property_to_trackers("Media tracking | ", "Ecommerce tracking | ")
