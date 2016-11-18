require 'rails_helper'

RSpec.describe "garages/index", type: :view do
  before(:each) do
    assign(:garages, [
      Garage.create!(
        :space_number => 2,
        :house => nil
      ),
      Garage.create!(
        :space_number => 2,
        :house => nil
      )
    ])
  end

  it "renders a list of garages" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
