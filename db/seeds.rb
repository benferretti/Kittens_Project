require 'faker'

User.destroy_all
User.reset_pk_sequence
Product.destroy_all
Product.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence

Faker::Config.locale = 'fr'

10.times do
  user = User.create(
    email: Faker::Name.first_name+"@yopmail.com",
    password: 'azertyyy'
  )
  puts "Seeding User #{user.email} #{user.encrypted_password}"
end

10.times do 
  category = Category.create(
    name:Faker::Creature::Cat.breed 
  )
end

20.times do 
  product = Product.create(
    name: Faker::Games::Pokemon.name,
    description: Faker::Hacker.say_something_smart,
    price: rand(1..100),
    url: Faker::Food.vegetables+".com",
    category_id: rand(1..10)
  )
end


