require 'rails_helper'

RSpec.describe "leagues/index", type: :view do
  before(:each) do
    assign(:leagues, [
      League.create!(
        name: "Name",
        num_teams: 2,
        gender: "Gender",
        age_range: "Age Range",
        location: "Location",
        sport: nil
      ),
      League.create!(
        name: "Name",
        num_teams: 2,
        gender: "Gender",
        age_range: "Age Range",
        location: "Location",
        sport: nil
      )
    ])
  end

  it "renders a list of leagues" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Gender".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Age Range".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Location".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
