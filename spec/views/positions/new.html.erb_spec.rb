require 'rails_helper'

RSpec.describe "positions/new", type: :view do
  before(:each) do
    assign(:position, Position.new(
      name: "MyString",
      offensive: false,
      defensive: false,
      sport: nil
    ))
  end

  it "renders new position form" do
    render

    assert_select "form[action=?][method=?]", positions_path, "post" do

      assert_select "input[name=?]", "position[name]"

      assert_select "input[name=?]", "position[offensive]"

      assert_select "input[name=?]", "position[defensive]"

      assert_select "input[name=?]", "position[sport_id]"
    end
  end
end
