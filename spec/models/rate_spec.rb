require 'rails_helper'

RSpec.describe Rate, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should validate_presence_of(:description) }
  it {should validate_presence_of(:value) }

  it {  should belong_to(:recipe) }
end
