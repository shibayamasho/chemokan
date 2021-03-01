FactoryBot.define do
  factory :user do
    uid                   { Faker::Lorem.characters(number: 8) }
    name                  { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6, max_length: 20) }
    password_confirmation { password }
  end
end
