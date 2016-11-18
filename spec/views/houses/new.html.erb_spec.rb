require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      :address => "MyText",
      :owner => nil
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "textarea#house_address[name=?]", "house[address]"

      assert_select "input#house_owner_id[name=?]", "house[owner_id]"
    end
  end
end
