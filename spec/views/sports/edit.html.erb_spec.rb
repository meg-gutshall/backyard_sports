require 'rails_helper'

RSpec.describe "sports/edit", type: :view do
  let(:sport) {
    Sport.create!(
      name: "MyString",
      num_players: 1,
      season: "MyString",
      setting: "MyString",
      scoring_method: "MyString"
    )
  }

  before(:each) do
    assign(:sport, sport)
  end

  it "renders the edit sport form" do
    render

    assert_select "form[action=?][method=?]", sport_path(sport), "post" do

      assert_select "input[name=?]", "sport[name]"

      assert_select "input[name=?]", "sport[num_players]"

      assert_select "input[name=?]", "sport[season]"

      assert_select "input[name=?]", "sport[setting]"

      assert_select "input[name=?]", "sport[scoring_method]"
    end
  end
end
