class Pet < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :approx_age
  validates_presence_of :sex
  validates_presence_of :shelter
  belongs_to :shelter
end
