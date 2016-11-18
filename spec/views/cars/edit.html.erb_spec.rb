require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :make => "MyString",
      :year => 1,
      :color => "MyString",
      :owner => nil,
      :garage => nil
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input#car_make[name=?]", "car[make]"

      assert_select "input#car_year[name=?]", "car[year]"

      assert_select "input#car_color[name=?]", "car[color]"

      assert_select "input#car_owner_id[name=?]", "car[owner_id]"

      assert_select "input#car_garage_id[name=?]", "car[garage_id]"
    end
  end
end
