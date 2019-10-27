class Ingredient < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :quantity

  belongs_to :recipe
  belongs_to :unit
end
