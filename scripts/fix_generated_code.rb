#!/usr/bin/env ruby
# frozen_string_literal: true

# Fix OpenAPI Generator output issues for Ruby
# Run after generation: ruby scripts/fix_generated_code.rb

MODEL_DIR = 'docker-hub/lib/docker-hub/models'

def fix_file(file)
  content = File.read(file)
  original = content.dup

  # 1. Remove nil check blocks that fail on nullable API responses
  nil_check_pattern = /      if \S+\.nil\?\n        fail ArgumentError, '[^']+cannot be nil'\n      end\n\n/
  content.gsub!(nil_check_pattern, '')

  # 2. Remove enum validators - Docker's API returns values not in their spec
  enum_pattern = /      validator = EnumAttributeValidator\.new\([^)]+\)\n      unless validator\.valid\?\([^)]+\)\n        fail ArgumentError[^\n]+\n      end\n/
  content.gsub!(enum_pattern, '')

  # 3. Fix broken Regexp.new patterns - match lines containing Regexp.new(/^ and replace
  content.gsub!(/^(\s*)(pattern = |return false if @\S+ !~ )Regexp\.new\(\/.*\)$/) do
    indent = Regexp.last_match(1)
    prefix = Regexp.last_match(2)
    "#{indent}#{prefix}(/.*/)"
  end

  # 4. Add nil guards to range validations  
  content.gsub!(/if (\S+) < 0/) do
    var = Regexp.last_match(1)
    "if #{var} && #{var} < 0"
  end

  if content != original
    File.write(file, content)
    puts "Fixed: #{File.basename(file)}"
    true
  else
    false
  end
end

puts "Fixing generated models in #{MODEL_DIR}..."
fixed_count = Dir["#{MODEL_DIR}/*.rb"].count do |f|
  fix_file(f)
end
puts "Done! Fixed #{fixed_count} files."
