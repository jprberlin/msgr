# Bundler setup
require 'bundler'
Bundler.setup :default, :test

# Coverage
require 'coveralls'
Coveralls.wear! do
  add_filter 'spec'
end

require 'rspec/autorun'
require 'rspec/message/within'
require 'msgr'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }

RSpec.configure do |config|
  config.order = 'random'
  config.expect_with :rspec do |c|
    # Only allow expect syntax
    c.syntax = :expect
  end

  config.before do
    Celluloid.logger = nil

    Celluloid.shutdown
    Celluloid.boot

    Celluloid.logger = nil
    Msgr.logger = false
  end
end
