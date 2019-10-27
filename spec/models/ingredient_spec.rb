require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it { should belong_to(:recipe) }
  it { should belong_to(:unit) }

  it { validate_presence_of(:name) }
  it { validate_presence_of(:quantity) }

end
