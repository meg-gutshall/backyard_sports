require 'webmock/rspec'

# Only allow connections to localhost during tests, and allow WebMock to work with Capybara's Selenium driver
WebMock.disable_net_connect!(
  allow_localhost: true,
  net_http_connect_on_start: true
)
