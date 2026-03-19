RSpec.configure do |config|
  config.before(:suite) do
    Faker::Name.unique.clear
    Faker::UniqueGenerator.clear
  end
end
