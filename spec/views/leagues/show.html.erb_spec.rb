require 'rails_helper'

RSpec.describe "leagues/show", type: :view do
  before(:each) do
    assign(:league, League.create!(
      name: "Name",
      num_teams: 2,
      gender: "Gender",
      age_range: "Age Range",
      location: "Location",
      sport: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Age Range/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(//)
  end
end
