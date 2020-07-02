class Pet < ApplicationRecord
  validates_presence_of :name, :approx_age, :sex, :shelter
  belongs_to :shelter 
end
