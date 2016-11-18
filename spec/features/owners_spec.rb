require 'rails_helper'

RSpec.feature "Owners", type: :feature do
  context "Creating an owner" do
    Steps "to creating an owner" do
      Given 'i am on the landing page' do
        visit '/'
      end
      Then "i can fill out an owner form" do
        click_on "New Owner"
        fill_in "Full name", with: "Riff Raff"
        fill_in "Email", with: "riff@raff.com"
        fill_in "Password", with: 'grillz'
        click_on "Create Owner"
      end
      And "i am taken to a confirmation page" do
        expect(page).to have_content "Owner was successfully created."
        expect(page).to have_content "Riff Raff"
        expect(page).to have_content "grillz"
        click_on "Back"
      end
    end #end of steps
  end #end of context
end
