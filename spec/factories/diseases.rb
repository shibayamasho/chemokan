FactoryBot.define do
  factory :disease do
    cancer_id  { Faker::Number.between(from: 2, to: 22) }
    other_id   { Faker::Number.between(from: 1, to: 12) }
    purpose_id { Faker::Number.between(from: 2, to: 5) }
  end
end
