# Get the Sinantra App
require_relative '../../app'

# Load Testing Gems
require 'Capybara'
require 'Capybara/cucumber'
require 'rspec'

# Setup Capybara
World do
  Capybara.app = App
  include Capybara::DSL
  include RSpec::Matchers
end