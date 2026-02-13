#!/usr/bin/env ruby
# frozen_string_literal: true

# Fix OpenAPI Generator output issues for Ruby
# Run after generation: ruby scripts/fix_generated_code.rb [--quiet]

MODEL_DIR = 'docker-hub/lib/docker-hub/models'
QUIET = ARGV.include?('--quiet') || ARGV.include?('-q')

def fix_file(file)
  content = File.read(file)
  original = content.dup

  # 1. Remove nil check blocks that fail on nullable API responses
  content.gsub!(/      if \S+\.nil\?\n        fail ArgumentError, '[^']+cannot be nil'\n      end\n\n/, '')

  # 2. Remove enum validators - Docker's API returns values not in their spec
  content.gsub!(/      validator = EnumAttributeValidator\.new\([^)]+\)\n      unless validator\.valid\?\([^)]+\)\n        fail ArgumentError[^\n]+\n      end\n/, '')

  # 3. Remove regex pattern validation blocks entirely (broken escaping + unnecessary)
  # Remove: pattern = Regexp.new(...) + if check + fail/push block
  content.gsub!(/      pattern = Regexp\.new\([^\n]+\n      if [^\n]+ !~ pattern\n        (?:fail ArgumentError|invalid_properties\.push)[^\n]+\n      end\n\n?/, '')

  # Remove: return false if @foo !~ Regexp.new(...)
  content.gsub!(/      return false if @\S+ !~ Regexp\.new\([^\n]+\n/, '')

  # 4. Add nil guards to range validations
  content.gsub!(/if (\S+) < 0/) do
    var = Regexp.last_match(1)
    "if #{var} && #{var} < 0"
  end

  if content != original
    File.write(file, content)
    puts "Fixed: #{File.basename(file)}" unless QUIET
    true
  else
    false
  end
end

puts "Fixing generated models..." unless QUIET
fixed_count = Dir["#{MODEL_DIR}/*.rb"].count do |f|
  fix_file(f)
end
puts "Fixed #{fixed_count} files." unless QUIET
