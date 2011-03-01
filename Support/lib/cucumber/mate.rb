# This is based on the official RSpec tm-bundle
require 'rubygems'

if ENV['TM_PROJECT_DIRECTORY']
  bundler_gemfile = File.join(ENV['TM_PROJECT_DIRECTORY'], 'Gemfile')
  if File.exists?(bundler_gemfile)
    ENV["BUNDLE_GEMFILE"] = bundler_gemfile
    require "bundler/setup"
  end
end

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..')))
require "cucumber/mate/feature_helper"
require "cucumber/mate/runner"
