class Rate < ApplicationRecord
  belongs_to :recipe

  validates_presence_of :description
  validates_presence_of :value

end
