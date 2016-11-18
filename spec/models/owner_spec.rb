require 'rails_helper'

RSpec.describe Owner, type: :model do
  it "should have a name, email and password" do
    new_owner = Owner.new(full_name: 'Riff Raff', email: 'riff@raff.com', password: 'grillz')
    expect(new_owner.save).to be true

    mr_cox = Owner.find_by_full_name('Riff Raff')
    expect(mr_cox.email).to eq 'riff@raff.com'
  end
end
