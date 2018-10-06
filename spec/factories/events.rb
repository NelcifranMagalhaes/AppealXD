FactoryBot.define do
  factory :event do
    name { Faker::Book.title }
    address { Faker::Address.full_address }
    duration_time { Faker::Date.birthday(18, 65) }
    max_people { Faker::Number.between(1, 10) }
    ticket_value { Faker::Number.decimal(3, 3) }
    persona
  end
end
