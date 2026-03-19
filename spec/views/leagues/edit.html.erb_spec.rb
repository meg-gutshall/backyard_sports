require 'rails_helper'

RSpec.describe "leagues/edit", type: :view do
  let(:league) {
    League.create!(
      name: "MyString",
      num_teams: 1,
      gender: "MyString",
      age_range: "MyString",
      location: "MyString",
      sport: nil
    )
  }

  before(:each) do
    assign(:league, league)
  end

  it "renders the edit league form" do
    render

    assert_select "form[action=?][method=?]", league_path(league), "post" do

      assert_select "input[name=?]", "league[name]"

      assert_select "input[name=?]", "league[num_teams]"

      assert_select "input[name=?]", "league[gender]"

      assert_select "input[name=?]", "league[age_range]"

      assert_select "input[name=?]", "league[location]"

      assert_select "input[name=?]", "league[sport_id]"
    end
  end
end
