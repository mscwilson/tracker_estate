class TrackerEstate

  def initialize
    @trackers = ["android", "ios", "js", "node", "java"]
    @features_file = "tracker_properties/features.md"
    @sessions_file = "tracker_properties/session.md"
    @emitter_config_file = "tracker_properties/emitter_network_config.md"
  end

  def make_a_single_table(features_filename)
    features_list = File.read(features_filename).split("\n")

    tracker_hash = Hash.new { |hash, key| hash[key] = [] }

    @trackers.each do |tracker|
      file = File.read("features/#{tracker}_features.md").split("\n")
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
      v.unshift(k.upcase)
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

  def output_tables
    output = "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\" />" \
              "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />" \
        "<title>Snowplow Tracker Estate</title><link rel=\"stylesheet\" href=\"style.css\"></head>" \
        "<body><h2>Snowplow Tracker Estate Overview</h2>" \
        "#{make_a_single_table(@features_file)}<br/>#{make_a_single_table(@sessions_file)}<br/>" \
        "#{make_a_single_table(@emitter_config_file)}<br/></body></html>"
        
    File.open("test.html", "w") { |f| f.write(output) }
  end

end

estate = TrackerEstate.new
estate.output_tables
