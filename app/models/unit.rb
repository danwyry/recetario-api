class Unit < ApplicationRecord
  has_many :ingredients

  validates_presence_of :name
  validates_presence_of :equivalence
  validates_presence_of :meassure

end
