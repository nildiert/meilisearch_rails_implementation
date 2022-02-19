# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


1000.times.each do |a|
  name = Faker::Restaurant.name
  cuisine = Faker::Demographic.demonym
  description = Faker::Restaurant.description
  restaurant = Restaurant.create!(name: name, cuisine: cuisine, description: description)

  rand(5..10).times do
    restaurant.reviews.create body: Faker::Restaurant.review
  end
end