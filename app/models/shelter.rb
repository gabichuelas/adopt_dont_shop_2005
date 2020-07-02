class Shelter < ApplicationRecord
  validates_presence_of :name
  # add other fields & write model spec.
  has_many :pets
end
