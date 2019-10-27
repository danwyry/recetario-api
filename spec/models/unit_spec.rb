require 'rails_helper'

RSpec.describe Unit, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it {  should validate_presence_of(:name) }
  it {  should validate_presence_of(:equivalence) }
  it {  should validate_presence_of(:meassure) }

  it {  should have_many(:ingredients) }
end
