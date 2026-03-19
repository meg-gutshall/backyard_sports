require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter

SimpleCov.start 'rails' do
  # Filter out files and directories here
  add_filter 'lib/generators'
  add_filter 'lib/templates'
  add_filter 'vendors'

  minimum_coverage 100 unless ENV['NOCOV']
end
