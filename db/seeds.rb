# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all

puts "Generate 5 restaurants..."
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
end
puts "Generated!"

# Review.destroy_all

# puts "Generate reviews"
# 5.times do
#   Review.create(
#     rating: rand(0..5),
#     content: Faker::Restaurant.review
#     # restaurant_id: 1
#     )
# end
# puts "Generated!"
