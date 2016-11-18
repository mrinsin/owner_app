require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :make => "Make",
      :year => 2,
      :color => "Color",
      :owner => nil,
      :garage => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
