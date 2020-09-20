$:.unshift File.expand_path("../lib", File.dirname(__FILE__))

require "simplecov"
require "coveralls"

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

require "reggora"

RSpec.configure do |config|

end

TOKEN = ENV['TOKEN']
API_INTEGRATION_KEY = ENV['API_INTEGRATION_KEY']
