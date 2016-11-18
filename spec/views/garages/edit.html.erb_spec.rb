require 'rails_helper'

RSpec.describe "garages/edit", type: :view do
  before(:each) do
    @garage = assign(:garage, Garage.create!(
      :space_number => 1,
      :house => nil
    ))
  end

  it "renders the edit garage form" do
    render

    assert_select "form[action=?][method=?]", garage_path(@garage), "post" do

      assert_select "input#garage_space_number[name=?]", "garage[space_number]"

      assert_select "input#garage_house_id[name=?]", "garage[house_id]"
    end
  end
end
