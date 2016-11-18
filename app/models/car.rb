class Car < ActiveRecord::Base
  belongs_to :owner
  belongs_to :garage

  validates :owner, :garage, presence: true
end
