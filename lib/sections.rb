
def section_articles section
  re = Regexp.new("^/#{section}/.*")
  @items.select {|i| re =~ i.identifier }
end
