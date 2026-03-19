require 'rails_helper'

RSpec.describe "positions/show", type: :view do
  before(:each) do
    assign(:position, Position.create!(
      name: "Name",
      offensive: false,
      defensive: false,
      sport: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
