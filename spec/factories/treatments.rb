FactoryBot.define do
  factory :treatment do
    date           { Faker::Date.between(from: '1900-01-01', to: '2021-03-01') }
    in_out_id      { Faker::Number.between(from: 2, to: 4) }
    #patient_id     {1}
    #disease_id     {1}
    #plan_id        {1}
    course         { Faker::Number.between(from: 1, to: 999) }
    day            { Faker::Number.between(from: 1, to: 7) }
    mesuring_date  { Faker::Date.between(from: '1900-01-01', to: '2021-03-01') }
    height         { Faker::Number.between(from: 99.0, to: 250.0) }
    weight         { Faker::Number.between(from: 10.0, to: 150.0) }
    dose1          { Faker::Number.between(from: 0.01, to: 9999) }
    dose2          { Faker::Number.between(from: 0.01, to: 9999) }
    dose3          { Faker::Number.between(from: 0.01, to: 9999) }
    dose4          { Faker::Number.between(from: 0.01, to: 9999) }
    dose5          { Faker::Number.between(from: 0.01, to: 9999) }
    dose6          { Faker::Number.between(from: 0.01, to: 9999) }
    dose7          { Faker::Number.between(from: 0.01, to: 9999) }
    dose8          { Faker::Number.between(from: 0.01, to: 9999) }
    nk1            { Faker::Lorem.sentence }
    dex            { Faker::Lorem.sentence }
    h1blocker      { Faker::Lorem.sentence }
    h2blocker      { Faker::Lorem.sentence }
    other_medicine { Faker::Lorem.sentence }
    text           { Faker::Lorem.sentence }
  end
end
