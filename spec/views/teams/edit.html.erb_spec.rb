require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  let(:team) {
    Team.create!(
      name: "MyString",
      num_players: 1,
      league: nil
    )
  }

  before(:each) do
    assign(:team, team)
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(team), "post" do

      assert_select "input[name=?]", "team[name]"

      assert_select "input[name=?]", "team[num_players]"

      assert_select "input[name=?]", "team[league_id]"
    end
  end
end
