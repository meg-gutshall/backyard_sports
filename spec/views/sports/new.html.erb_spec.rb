require 'rails_helper'

RSpec.describe "sports/new", type: :view do
  before(:each) do
    assign(:sport, Sport.new(
      name: "MyString",
      num_players: 1,
      season: "MyString",
      setting: "MyString",
      scoring_method: "MyString"
    ))
  end

  it "renders new sport form" do
    render

    assert_select "form[action=?][method=?]", sports_path, "post" do

      assert_select "input[name=?]", "sport[name]"

      assert_select "input[name=?]", "sport[num_players]"

      assert_select "input[name=?]", "sport[season]"

      assert_select "input[name=?]", "sport[setting]"

      assert_select "input[name=?]", "sport[scoring_method]"
    end
  end
end
