require 'rails_helper'

RSpec.describe "garages/new", type: :view do
  before(:each) do
    assign(:garage, Garage.new(
      :space_number => 1,
      :house => nil
    ))
  end

  it "renders new garage form" do
    render

    assert_select "form[action=?][method=?]", garages_path, "post" do

      assert_select "input#garage_space_number[name=?]", "garage[space_number]"

      assert_select "input#garage_house_id[name=?]", "garage[house_id]"
    end
  end
end
