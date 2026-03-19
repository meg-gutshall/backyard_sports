require 'rails_helper'

RSpec.describe "positions/edit", type: :view do
  let(:position) {
    Position.create!(
      name: "MyString",
      offensive: false,
      defensive: false,
      sport: nil
    )
  }

  before(:each) do
    assign(:position, position)
  end

  it "renders the edit position form" do
    render

    assert_select "form[action=?][method=?]", position_path(position), "post" do

      assert_select "input[name=?]", "position[name]"

      assert_select "input[name=?]", "position[offensive]"

      assert_select "input[name=?]", "position[defensive]"

      assert_select "input[name=?]", "position[sport_id]"
    end
  end
end
