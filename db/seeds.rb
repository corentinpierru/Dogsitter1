# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'



50.times do
  City.create!(
    name: Faker::Address.city
  )
  Dog.create!(
  name: Faker::Creature::Dog.name,
  weight: 12,
  city_id: City.find(rand(City.first.id..City.last.id)).id
  ) 
  Dogsitter.create!(
  name: Faker::Name.name,
  city_id: City.find(rand(City.first.id..City.last.id)).id
  )
  
  Stroll.create!(
    dog_id: Dog.find(rand(Dog.first.id..Dog.last.id)).id,
    dogsitter_id: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)).id
  ) 
end