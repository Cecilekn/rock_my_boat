# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Boat.destroy_all

puts "Destroyed"

leonardo = User.new(
  first_name: "Leonardo",
  last_name: "Di Caprio",
  email: "leonardo@bg.com",
  password: "12345678",
  )
leonardo.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621579/Rock%20My%20Boat/o-LEONARDO-DICAPRIO-570_bv0ydb.jpg"
leonardo.save!

puts "Leo created"

bollore = User.new(
  first_name: "Vincent",
  last_name: "Bollore",
  email: "vincent@bg.com",
  password: "12345678"
  )
bollore.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621432/Rock%20My%20Boat/7793151516_vincent-bollore-le-francais-le-plus-puissant-d-afrique_dswqdg.jpg"
bollore.save!


puts "Bollore created"

jagger = User.new(
  first_name: "Mick",
  last_name: "Jagger",
  email: "mick@bg.com",
  password: "12345678"
  )
jagger.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558710883/Rock%20My%20Boat/_5xAXOi-_400x400_cjmqzm.jpg"
jagger.save!

puts "Jagger created"

boat = Boat.new(
  name: "Dune III",
  capacity: 15,
  location: "Palavas les Flots",
  theme: "Gatsby",
  price_per_day: 1000
)
puts "boat sans photo"
boat.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"
boat.user = leonardo
boat.save!

boat = Boat.new(
    name: "Lili",
    capacity: 10,
    location: "La Ciotat",
    theme: "Gatsby",
    price_per_day: 1200
  )
  puts "boat sans photo"
  boat.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"
  boat.user = bollore
  boat.save!

boat = Boat.new(
    name: "Will be fine",
    capacity: 50,
    location: "Cassis",
    theme: "Pirate",
    price_per_day: 800
  )
  puts "boat sans photo"
  boat.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"
  boat.user = jagger
  boat.save!

boat = Boat.new(
    name: "Marcaro",
    capacity: 30,
    location: "Saint-Tropez",
    theme: "James Bond",
    price_per_day: 1200
  )
  puts "boat sans photo"
  boat.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558620703/Rock%20My%20Boat/touringitaly-rent-a-yatch_moshzk.jpg"
  boat.user = bollore
  boat.save!

boat = Boat.new(
    name: "Money Penny",
    capacity: 2,
    location: "Cannes",
    theme: "James Bond",
    price_per_day: 600
  )
  puts "boat sans photo"
  boat.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"
  boat.user = bollore
  boat.save!
