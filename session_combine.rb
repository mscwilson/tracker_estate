
features_file = "tracker_properties/features.md"
sessions_file = "tracker_properties/session.md"

trackers = ["android", "ios", "js", "node", "java"]

# possible_values = {
#   "" => "",
#   "y" => "yes",
#   "n" => "no",
#   "dep" => "deprecated",
#   "yb" => "yes, but...",
#   "na" => "N/A"
# }


session_features = File.read(sessions_file).split("\n")
tracker_hash = Hash.new { |hash, key| hash[key] = [] }

p session_features

trackers.each do |tracker|
  file = File.read("features/#{tracker}_features.md").split("\n")

  file.each do |line|
    line_sections = line.split("|")
    next if line_sections[0].include?("#")
    next if !session_features.include?(line_sections[0].gsub("\t", ""))

    tracker_hash[tracker] << line_sections[1].strip
  end

end

tracker_hash.each do |k, v|
  v.unshift(k)
end

all_the_lists = [session_features]
trackers.each do |tracker|
  all_the_lists << tracker_hash[tracker]
end

table = all_the_lists.transpose

# to produce html table
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
    line.each do |e|
      line_with_html << "<td>#{e}</td>"
    end
    html_table << "<tr>#{line_with_html.join}</tr>"
  end
end

html_table_string = html_table.flatten.join + "</tbody></table>"

output = "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\" />" \
          "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />" \
    "<title>Snowplow Tracker Estate</title></head><body><h2>Snowplow Tracker Estate Overview</h2>#{html_table_string}<br/></body></html>"
File.open("test.html", "w") { |f| f.write(output) }


# # to produce markdown table

# # new_table = []
# # table.each do |line|
# #   str = "|" + line.join("|") + "|"
# #   str += "\n"
# #   new_table << str
# # end

# # divider = ""
# # trackers.length.times do
# #   divider += "|---"
# # end
# # divider += "|---|\n"

# # new_table.insert(1, divider)

# # output = new_table.flatten.join
# # File.open("test.md", "w") { |f| f.write(output) }


