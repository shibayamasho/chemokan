FactoryBot.define do
  factory :plan do
    name           { Faker::Lorem.sentence }
    period         { Faker::Number.between(from: 1, to: 999) }
    emetic_id      { Faker::Number.between(from: 2, to: 6)}
    nk1            { Faker::Lorem.sentence }
    dex            { Faker::Lorem.sentence }
    h1blocker      { Faker::Lorem.sentence }
    h2blocker      { Faker::Lorem.sentence }
    other_medicine { Faker::Lorem.sentence }
    text           { Faker::Lorem.sentence }
    medicine_name1 { Faker::FunnyName.name }
    medicine_name2 { Faker::FunnyName.name }
    medicine_name3 { Faker::FunnyName.name }
    medicine_name4 { Faker::FunnyName.name }
    medicine_name5 { Faker::FunnyName.name }
    medicine_name6 { Faker::FunnyName.name }
    medicine_name7 { Faker::FunnyName.name }
    medicine_name8 { Faker::FunnyName.name }
    abbreviation1  { Faker::Name.initials }
    abbreviation2  { Faker::Name.initials }
    abbreviation3  { Faker::Name.initials }
    abbreviation4  { Faker::Name.initials }
    abbreviation5  { Faker::Name.initials }
    abbreviation6  { Faker::Name.initials }
    abbreviation7  { Faker::Name.initials }
    abbreviation8  { Faker::Name.initials }
    dose1          { Faker::Number.between(from: 0.01, to: 9999) }
    dose2          { Faker::Number.between(from: 0.01, to: 9999) }
    dose3          { Faker::Number.between(from: 0.01, to: 9999) }
    dose4          { Faker::Number.between(from: 0.01, to: 9999) }
    dose5          { Faker::Number.between(from: 0.01, to: 9999) }
    dose6          { Faker::Number.between(from: 0.01, to: 9999) }
    dose7          { Faker::Number.between(from: 0.01, to: 9999) }
    dose8          { Faker::Number.between(from: 0.01, to: 9999) }
    unit1_id       { Faker::Number.between(from: 2, to: 8)}
    unit2_id       { Faker::Number.between(from: 1, to: 8)}
    unit3_id       { Faker::Number.between(from: 1, to: 8)}
    unit4_id       { Faker::Number.between(from: 1, to: 8)}
    unit5_id       { Faker::Number.between(from: 1, to: 8)}
    unit6_id       { Faker::Number.between(from: 1, to: 8)}
    unit7_id       { Faker::Number.between(from: 1, to: 8)}
    unit8_id       { Faker::Number.between(from: 1, to: 8)}
    schedule1      { Faker::Number.between(from: 1, to: 99) }
    schedule2      { Faker::Number.between(from: 1, to: 99) }
    schedule3      { Faker::Number.between(from: 1, to: 99) }
    schedule4      { Faker::Number.between(from: 1, to: 99) }
    schedule5      { Faker::Number.between(from: 1, to: 99) }
    schedule6      { Faker::Number.between(from: 1, to: 99) }
    schedule7      { Faker::Number.between(from: 1, to: 99) }
    schedule8      { Faker::Number.between(from: 1, to: 99) }
  end
end
