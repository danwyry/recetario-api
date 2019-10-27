FactoryBot.define do
  factory :rate do
    description { Faker::Lorem.word }
    value { Faker::Number.number(10) }
  end
end