class Garage < ActiveRecord::Base
  belongs_to :house
  validates :space_number, :house, presence: true
  validates :space_number, numericality: {greater_than: 0}
end
