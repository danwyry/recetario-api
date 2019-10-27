class Step < ApplicationRecord
  belongs_to :recipe

  validates_presence_of :description
end
