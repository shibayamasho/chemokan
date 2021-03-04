FactoryBot.define do
  factory :disease do
    cancer_id  { Faker::Number.between(from: 2, to: 12) }
    other_id   { Faker::Number.between(from: 1, to: 6) }
    purpose_id { Faker::Number.between(from: 2, to: 5) }
  end
end
