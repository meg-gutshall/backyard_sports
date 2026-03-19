require 'rails_helper'

RSpec.describe "positions/index", type: :view do
  before(:each) do
    assign(:positions, [
      Position.create!(
        name: "Name",
        offensive: false,
        defensive: false,
        sport: nil
      ),
      Position.create!(
        name: "Name",
        offensive: false,
        defensive: false,
        sport: nil
      )
    ])
  end

  it "renders a list of positions" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
