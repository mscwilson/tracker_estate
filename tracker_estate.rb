class TrackerEstate

  def initialize
    @trackers = ["android", "ios", "js", "node", "java"]
    @features_file = "tracker_properties/features.md"
    @sessions_file = "tracker_properties/session.md"
  end
  
  def features_table
    all_features = File.read(@features_file).split("\n")
    tracker_hash = Hash.new { |hash, key| hash[key] = [] }

    @trackers.each do |tracker|
      file = File.read("features/#{tracker}_features.md").split("\n")

      file.each do |line|
        line_sections = line.split("|")
        next if line_sections[0].include?("#")

        tracker_hash[tracker] << line_sections[1].strip
      end

    end

    add_tracker_name_to_start(tracker_hash)

    html_table = make_array_of_html_table_parts(combine_lists(all_features, tracker_hash).transpose)
    html_table.flatten.join + "</tbody></table>"
  end

  def session_table
    session_features = File.read(@sessions_file).split("\n")
    tracker_hash = Hash.new { |hash, key| hash[key] = [] }

    @trackers.each do |tracker|
      file = File.read("features/#{tracker}_features.md").split("\n")

      file.each do |line|
        line_sections = line.split("|")
        next if line_sections[0].include?("#")
        next if !session_features.include?(line_sections[0].gsub("\t", ""))

        tracker_hash[tracker] << line_sections[1].strip
      end

    end

    add_tracker_name_to_start(tracker_hash)

    html_table = make_array_of_html_table_parts(combine_lists(session_features, tracker_hash).transpose)
    html_table.flatten.join + "</tbody></table>"
  end

  def add_tracker_name_to_start(dict)
    dict.each do |k, v|
      v.unshift(k)
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
        "#{features_table}<br/>#{session_table}</body></html>"
    File.open("test.html", "w") { |f| f.write(output) }
  end

end

estate = TrackerEstate.new
estate.output_tables
