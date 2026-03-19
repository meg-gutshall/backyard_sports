require 'rails_helper'

RSpec.describe "sports/index", type: :view do
  before(:each) do
    assign(:sports, [
      Sport.create!(
        name: "Name",
        num_players: 2,
        season: "Season",
        setting: "Setting",
        scoring_method: "Scoring Method"
      ),
      Sport.create!(
        name: "Name",
        num_players: 2,
        season: "Season",
        setting: "Setting",
        scoring_method: "Scoring Method"
      )
    ])
  end

  it "renders a list of sports" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Season".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Setting".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Scoring Method".to_s), count: 2
  end
end
