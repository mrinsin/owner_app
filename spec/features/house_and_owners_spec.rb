require 'rails_helper'

RSpec.feature "HouseAndOwners", type: :feature do

    context 'Creating a house that belongs to an owner' do
      Steps 'to creating a house with an owner' do
        Given "i am on the houses index page" do
          visit '/houses'
        end
        Then "I can create a new house" do
          click_on "New House"
          fill_in "Address", with: '212 Hollywood Hills'
          fill_in "Owner", with: '1'
          click_on "Create House"
          click_on "Back"
        end
        Then "I can view owner information when I click on the owser's name" do
          click_on 
        end
      end #end of steps
    end #end of context
end
