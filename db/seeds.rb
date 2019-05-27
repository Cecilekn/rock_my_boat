# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Boat.destroy_all

puts "Detroyed"

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


array = [
  ["Dune 3", "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"],
  ["Lili", "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"],
  ["Will Be Fine", "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"],
  ["Marcaro", "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558620703/Rock%20My%20Boat/touringitaly-rent-a-yatch_moshzk.jpg"],
  ["Wolfy", "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"]
]

array.each do |item|
  boat = Boat.new(
    name: item[0],
    capacity: rand(2..50),
    location: ["Saint Malo", "Nice", "Cannes", "La Ciotat", "La Grande Motte", "Palavas les Flots"].sample,
    theme: ["Pirate", "James Bond", "Gatsby", "Peter Pan", "Woodstock"].sample,
    price_per_day: rand(200..2000),
    user_id: rand(User.first.id..User.last.id)
  )
  puts "boat sans photo"
  boat.remote_photo_url = item[1]
  boat.save!
end
