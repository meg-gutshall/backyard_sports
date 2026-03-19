require 'capybara/rspec'
require 'capybara/rails'

# Set up headless_firefox for CentOS/runner environments
#
# NOTE: to run your feature/system specs in a visible state, invoke them with `HEADFUL=1 rspec`
Capybara.register_driver :headless_firefox do |app|
  browser_options = Selenium::WebDriver::Firefox::Options.new
  browser_options.args << '--headless' unless ENV['HEADFUL']

  browser_profile = Selenium::WebDriver::Firefox::Profile.new
  browser_options.profile = browser_profile

  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: browser_options
  )
end

Capybara.javascript_driver = :headless_firefox
