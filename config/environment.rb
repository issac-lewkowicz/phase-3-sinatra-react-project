# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'

ActiveRecord::Base.default_timezone = :local


def reload
  Dir.glob('app/models/*').each do |file_name|
      load file_name
  end
  puts 'files reloaded'
end