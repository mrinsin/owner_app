require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      :address => "MyText",
      :owner => nil
    ))
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(@house), "post" do

      assert_select "textarea#house_address[name=?]", "house[address]"

      assert_select "input#house_owner_id[name=?]", "house[owner_id]"
    end
  end
end
