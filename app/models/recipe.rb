class Recipe < ApplicationRecord

  has_many :ingredients
  has_many :steps
  has_many :rates

  validates_presence_of :name
  validates_presence_of :pieces


end
