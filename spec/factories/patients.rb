FactoryBot.define do
  factory :patient do
    name       { Faker::Name.initials(number: 2) }
    gender_id  { Faker::Number.between(from: 2, to: 4) }
    birthday   { Faker::Date.between(from: '1900-01-01', to: '2021-03-01') }
    text       { Faker::Lorem.sentence }
  end
end
