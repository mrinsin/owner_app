require 'rails_helper'

RSpec.describe "garages/show", type: :view do
  before(:each) do
    @garage = assign(:garage, Garage.create!(
      :space_number => 2,
      :house => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
