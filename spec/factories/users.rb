FactoryBot.define do
  factory :user do
    uid                   { Faker::Lorem.characters(min_length: 8, max_length: 9) }
    name                  { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6, max_length: 30) }
    password_confirmation { password }
  end
end
