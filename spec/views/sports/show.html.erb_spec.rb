require 'rails_helper'

RSpec.describe "sports/show", type: :view do
  before(:each) do
    assign(:sport, Sport.create!(
      name: "Name",
      num_players: 2,
      season: "Season",
      setting: "Setting",
      scoring_method: "Scoring Method"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Season/)
    expect(rendered).to match(/Setting/)
    expect(rendered).to match(/Scoring Method/)
  end
end
