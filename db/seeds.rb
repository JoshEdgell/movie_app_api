# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Movie.create(
  title: Faker::Beer.style,
  rating: Faker::Beer.ibu,
  genre: Faker::Cat.breed,
  year_released: Faker::Number.number(4),
  plot: Faker::Hipster.paragraph,
  director: Faker::GameOfThrones.character,
  actors: Faker::Seinfeld.character,
  poster: 'https://www.movieposter.com/posters/archive/main/88/MPW-44013',
  rotten_tomatoes_score: Faker::Beer.alcohol
  )
end

10.times do
  User.create(
    gender: Faker::Demographic.sex,
    username: Faker::Internet.user_name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(2)
  )
end
