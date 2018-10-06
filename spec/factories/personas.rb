FactoryBot.define do
  factory :persona do
    name { Faker::Name.name}
    cnpj {Faker::Number.number(7)}
    social_reason { Faker::Company.name}
    fantasy_name { Faker::GameOfThrones.character }
    user
  end
end
