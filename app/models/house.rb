class House < ActiveRecord::Base
  belongs_to :owner
  validates :address, :owner, presence: true
end
