# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

leonardo = User.create!(
  first_name: "Leonardo",
  last_name: "Di Caprio",
  email: "leonardo@bg.com",
  password: "12345678"
  )

bollore = User.create!(
  first_name: "Vincent",
  last_name: "Bollore",
  email: "vincent@bg.com",
  password: "12345678"
  )

jagger = User.create!(
  first_name: "Mick",
  last_name: "Jagger",
  email: "mick@bg.com",
  password: "12345678"
  )

names = ["Dune 3", "Lili", "Will Be Fine", "Marcaro", "Wolfy", "Pyjama", "Amandine", "Guigui", "Cece", "Beauty of the See"]

names.each do |name|
  boat = Boat.create!(
    name: name,
    capacity: rand(2..50),
    location: ["Saint Malo", "Nice", "Cannes", "La Ciota", "La Grande Motte", "Palavas les Flots"].sample,
    theme: ["Pirate", "James Bond", "Gatsby", "Peter Pan", "Woodstock"].sample,
    price_per_day: rand(200..2000),
    user_id: rand(1..3)
  )
end
