android_file = "android_features.md"
js_file = "js_features.md"

android = File.read(android_file).split("\n")
js = File.read(js_file).split("\n")

possible_values = {
  "" => "",
  "y" => "yes",
  "n" => "no",
  "dep" => "deprecated",
  "yb" => "yes, but...",
  "na" => "N/A"
}

properties = []
android_list = []
js_list = []

android.each do |line|
  pieces = line.split("|")
  next if pieces[0].include?("#")

  if !properties.include?(pieces[0])
    properties << pieces[0].strip
  end
  android_list << possible_values[pieces[1].strip]
end

js.each do |line|
  pieces = line.split("|")
  next if pieces[0].include?("#")

  js_list << possible_values[pieces[1].strip]
end

heading = ["Feature", "Android", "JS"]
table = [properties, android_list, js_list].transpose
table.unshift(heading)

table.each do |line|
  line.insert(0, "|")
  line.insert(2, "|")
  line.insert(4, "|")
  line.insert(6, "|")
  line.insert(7, "\n")
end

divider = "|---|---|---|\n"
table.insert(1, divider)
p table

output = table.flatten.join
File.open("test.md", "w") { |f| f.write(output) }
