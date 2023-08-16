# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# TODO: Write a seed to insert 100 posts in the database

5.times do
  restaurant = Restaurant.create!(
    name: Faker::FunnyName.two_word_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w(chinese italian japanese french belgian).sample
  )
  review = Review.create!(
    rating: rand(0..5),
    content: Faker::Restaurant.review,
    restaurant_id: restaurant.id
  )
end
