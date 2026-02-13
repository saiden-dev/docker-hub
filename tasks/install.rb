#!/usr/bin/env ruby
# frozen_string_literal: true

# Generate and install docker-hub gem locally
# Usage: ruby tasks/install.rb

require 'fileutils'

DIR = File.expand_path('..', __dir__)
SPEC_URL = 'https://docs.docker.com/reference/api/hub/latest.yaml'
GENERATOR_VERSION = '7.19.0'

Dir.chdir(DIR) do
  # Download spec
  puts "Downloading OpenAPI spec..."
  system("curl -s #{SPEC_URL} -o openapi.yaml")

  # Extract API version from spec
  api_version = File.read('openapi.yaml')[/^\s+version:\s*["']?([^"'\s]+)/, 1] || '0.0'
  git_hash = `git rev-parse --short HEAD 2>/dev/null`.strip
  git_hash = 'local' if git_hash.empty?
  gem_version = "#{api_version}.#{git_hash}"
  puts "Version: #{gem_version}"

  # Remove old generated code
  FileUtils.rm_rf('docker-hub')

  # Generate
  puts "Generating client..."
  system(
    "openapi-generator generate -i openapi.yaml -g ruby -o ./docker-hub " \
    "--skip-validate-spec " \
    "--additional-properties=gemName=docker-hub " \
    "--additional-properties=moduleName=DockerHub " \
    "--additional-properties=gemVersion=#{gem_version} " \
    "--additional-properties=library=typhoeus " \
    "> /dev/null 2>&1"
  )

  # Fix
  puts "Fixing generated code..."
  system("ruby scripts/fix_generated_code.rb --quiet")

  # Uninstall old versions
  puts "Uninstalling old versions..."
  system("gem uninstall docker-hub --all --executables --ignore-dependencies 2>/dev/null")

  # Build and install
  Dir.chdir('docker-hub') do
    puts "Building gem..."
    system("gem build docker-hub.gemspec -q")

    gem_file = Dir['docker-hub-*.gem'].first
    if gem_file
      puts "Installing #{gem_file}..."
      system("gem install #{gem_file} --local --no-document")
      FileUtils.rm(gem_file)
      puts "Done!"
    else
      puts "Error: gem file not found"
      exit 1
    end
  end
end
