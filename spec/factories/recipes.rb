FactoryBot.define do
  factory :recipe do
    name { Faker::Lorem.word }
    pieces { Faker::Number.number(digits: 10) }
  end
end