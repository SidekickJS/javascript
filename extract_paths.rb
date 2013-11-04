require "yaml"
slugs = {}
Dir["_posts/**"].each do |post|
  content = open(post).read
  _, header, body = content.split("---")
  header = YAML.load(header)
  code = header["jshint_code"]
  if code
    slugs[code] = File.basename(post)[11..-1].gsub(".html","")
  end
end
puts slugs.to_yaml
