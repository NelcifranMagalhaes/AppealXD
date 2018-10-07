# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
puts "Eventos Deletados"
Persona.destroy_all
puts "Dados Pessoais Deletados"
User.destroy_all
puts "Usuários Deletadas"
puts "##########################Seedando a Aplicação################################"

User.create!(id: 1,email: "sasuke@gmail.com" ,password: "123456")
User.create!(id: 2,email: "deidara@gnail.com",password: "123456")
User.create!(id: 3,email: "itachi@gmail.com",password: "123456")
puts "Criados #{User.count} usuários"

Persona.create!(name: Faker::Name.name,
    cnpj: Faker::Number.number(7),
    social_reason: Faker::Company.name,
    fantasy_name: Faker::GameOfThrones.character ,
    user_id:  1
)
Persona.create!(name: Faker::Name.name,
    cnpj: Faker::Number.number(7),
    social_reason: Faker::Company.name,
    fantasy_name: Faker::GameOfThrones.character ,
    user_id:  2
)
Persona.create!(name: Faker::Name.name,
    cnpj: Faker::Number.number(7),
    social_reason: Faker::Company.name,
    fantasy_name: Faker::GameOfThrones.character ,
   	user_id:  3
)
puts "Criados #{Persona.count} Dados Pessoais"

40.times do |index|
   Event.create!(name: Faker::Book.title ,
    address:  Faker::Address.full_address ,
    duration_time:  Faker::Time.between(DateTime.now - 1, DateTime.now), 
    max_people:  Faker::Number.between(1, 10) ,
    ticket_value:  Faker::Number.decimal(3, 3) ,
   	user_id:  rand(1...3)
)
end
puts "Criados #{Event.count} Eventos"
