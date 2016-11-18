require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :make => "Make",
        :year => 2,
        :color => "Color",
        :owner => nil,
        :garage => nil
      ),
      Car.create!(
        :make => "Make",
        :year => 2,
        :color => "Color",
        :owner => nil,
        :garage => nil
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
