# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    dogsitter = Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  end
  
  10.times do 
    dog = Dog.create(name: Faker::Creature::Dog.name, breed: Faker::Creature::Dog.breed)
  end
  
  20.times do
    rand_dog_id = rand(1..Dog.all.length)
    rand_dogsitter_id = rand(1..Dogsitter.all.length)
    stroll = Stroll.create(dogsitter: Dogsitter.find(rand_dogsitter_id), dog: Dog.find(rand_dog_id))
  end