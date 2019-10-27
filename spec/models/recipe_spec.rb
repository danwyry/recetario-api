require 'rails_helper'

RSpec.describe Recipe, type: :model do


  it {  should have_many(:ingredients) }
  it {  should have_many(:steps) }
  it {  should have_many(:rates) }

  it {  validate_presence_of(:name) }
  it {  validate_presence_of(:pieces) }

  # pending "add some examples to (or delete) #{__FILE__}"
end
