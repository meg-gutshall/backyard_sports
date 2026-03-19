require 'rails_helper'

RSpec.describe "leagues/new", type: :view do
  before(:each) do
    assign(:league, League.new(
      name: "MyString",
      num_teams: 1,
      gender: "MyString",
      age_range: "MyString",
      location: "MyString",
      sport: nil
    ))
  end

  it "renders new league form" do
    render

    assert_select "form[action=?][method=?]", leagues_path, "post" do

      assert_select "input[name=?]", "league[name]"

      assert_select "input[name=?]", "league[num_teams]"

      assert_select "input[name=?]", "league[gender]"

      assert_select "input[name=?]", "league[age_range]"

      assert_select "input[name=?]", "league[location]"

      assert_select "input[name=?]", "league[sport_id]"
    end
  end
end
