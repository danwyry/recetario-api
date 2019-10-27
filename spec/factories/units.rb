FactoryBot.define do
  factory :unit do
    name { Faker::Lorem.word }
    meassure { Faker::Lorem.word }
    equivalence { Faker::Number.number() }
  end
end