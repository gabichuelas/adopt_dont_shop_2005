class Shelter < ApplicationRecord
  validates_presence_of :name
  # validates_presence_of :address, :city, :state, :zip
  has_many :pets
end
