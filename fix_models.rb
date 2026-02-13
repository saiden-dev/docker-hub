#!/usr/bin/env ruby
# Fix all model files - remove strict validations that don't match API reality

Dir["docker-hub/lib/docker-hub/models/*.rb"].each do |file|
  content = File.read(file)
  modified = false

  # Remove nil check blocks
  new_content = content.gsub(/      if \S+\.nil\?\n        fail ArgumentError, '[^']+cannot be nil'\n      end\n\n/) do
    modified = true
    ""
  end

  # Remove enum validators
  new_content = new_content.gsub(/      validator = EnumAttributeValidator\.new\([^)]+\)\n      unless validator\.valid\?\([^)]+\)\n        fail ArgumentError[^\n]+\n      end\n/) do
    modified = true
    ""
  end

  # Fix broken Regexp.new patterns with backslash-slash
  new_content = new_content.gsub(/Regexp\.new\(\/[^\/]*\\\\\/[^)]+\)/) do
    modified = true
    "(/.*/)"
  end

  if modified
    File.write(file, new_content)
    puts "Fixed: #{file}"
  end
end

puts "Done!"
