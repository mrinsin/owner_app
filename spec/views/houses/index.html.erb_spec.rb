require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        :address => "MyText",
        :owner => nil
      ),
      House.create!(
        :address => "MyText",
        :owner => nil
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
