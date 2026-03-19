FactoryBot.define do
  factory :league do
    name { "MyString" }
    num_teams { 1 }
    gender { "MyString" }
    age_range { "MyString" }
    location { "MyString" }
    sport { nil }
  end
end
