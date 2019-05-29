# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Boat.destroy_all
Booking.destroy_all
Review.destroy_all

puts "Destroyed"

leonardo = User.new(
  first_name: "Leonardo",
  last_name: "Di Caprio",
  email: "leonardo@bg.com",
  password: "12345678",
  )
leonardo.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621579/Rock%20My%20Boat/o-LEONARDO-DICAPRIO-570_bv0ydb.jpg"
leonardo.save!

puts "leonardo created"

bollore = User.new(
  first_name: "Vincent",
  last_name: "Bollore",
  email: "vincent@bg.com",
  password: "12345678"
  )
bollore.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621432/Rock%20My%20Boat/7793151516_vincent-bollore-le-francais-le-plus-puissant-d-afrique_dswqdg.jpg"
bollore.save!


puts "bollore created"

mick = User.new(
  first_name: "Mick",
  last_name: "Jagger",
  email: "mick@bg.com",
  password: "12345678"
  )
mick.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558710883/Rock%20My%20Boat/_5xAXOi-_400x400_cjmqzm.jpg"
mick.save!

puts "mick created"

dune = Boat.new(
  name: "Dune III",
  capacity: 15,
  location: "Palavas les Flots",
  theme: "Gatsby",
  price_per_day: 1000
)
dune.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"
dune.remote_photo_2_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"
dune.remote_photo_3_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"
dune.remote_photo_4_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"
dune.remote_photo_5_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622355/Rock%20My%20Boat/catamaran-5294_renw9z.jpg"
dune.user = leonardo
dune.save!
puts "dune created"

lili = Boat.new(
    name: "Lili",
    capacity: 10,
    location: "La Ciotat",
    theme: "Gatsby",
    price_per_day: 1200
  )
lili.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"
lili.remote_photo_2_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"
lili.remote_photo_3_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"
lili.remote_photo_4_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"
lili.remote_photo_5_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558622332/Rock%20My%20Boat/catamaran-2800_hoytl7.jpg"
lili.user = bollore
lili.save!
puts "lili created"

willbefine = Boat.new(
    name: "Will be fine",
    capacity: 50,
    location: "Cassis",
    theme: "Pirate",
    price_per_day: 800
  )
willbefine.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"
willbefine.remote_photo_2_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"
willbefine.remote_photo_3_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"
willbefine.remote_photo_4_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"
willbefine.remote_photo_5_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621900/Rock%20My%20Boat/fantasy-1_rc2byl.jpg"
willbefine.user = mick
willbefine.save!
puts "willbefine created"

marcaro = Boat.new(
    name: "Marcaro",
    capacity: 30,
    location: "Saint-Tropez",
    theme: "James Bond",
    price_per_day: 1200
  )
marcaro.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558620703/Rock%20My%20Boat/touringitaly-rent-a-yatch_moshzk.jpg"
marcaro.remote_photo_2_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1559129312/eydehfchouobot8mg9al.jpg"
marcaro.remote_photo_3_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1559128682/t0knzudbppwhuu0gtxdr.jpg"
marcaro.remote_photo_4_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1559125938/qaym3unrwoq58soelmdt.jpg"
marcaro.remote_photo_5_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1559124337/xlvnh5joz4xmm6orzpj9.jpg"
marcaro.user = bollore
marcaro.save!
puts "marcaro created"

moneypenny = Boat.new(
    name: "Money Penny",
    capacity: 2,
    location: "Cannes",
    theme: "James Bond",
    price_per_day: 600
  )
moneypenny.remote_photo_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"
moneypenny.remote_photo_2_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"
moneypenny.remote_photo_3_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"
moneypenny.remote_photo_4_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"
moneypenny.remote_photo_5_url = "https://res.cloudinary.com/di4pxxpr8/image/upload/v1558621184/Rock%20My%20Boat/46d1a096d37130f762120e96788867b7_exz1sq.jpg"
moneypenny.user = bollore
moneypenny.save!
puts "moneypenny created"

booking1 = Booking.new(
  start_date: Date.today - 30,
  end_date: Date.today - 27,
  validated: true
  )
booking1.user = leonardo
booking1.boat = lili
booking1.total_price = lili.price_per_day * (booking1.end_date - booking1.start_date).to_i
booking1.save!
puts "booking1 created"

booking2 = Booking.new(
  start_date: Date.today - 95,
  end_date: Date.today - 80,
  validated: true
  )
booking2.user = leonardo
booking2.boat = willbefine
booking2.total_price = willbefine.price_per_day * (booking2.end_date - booking2.start_date).to_i
booking2.save!
puts "booking2 created"

booking3 = Booking.new(
  start_date: Date.today - 240,
  end_date: Date.today - 225,
  validated: true
  )
booking3.user = leonardo
booking3.boat = marcaro
booking3.total_price = marcaro.price_per_day * (booking3.end_date - booking3.start_date).to_i
booking3.save!
puts "booking3 created"

booking4 = Booking.new(
  start_date: Date.today + 10,
  end_date: Date.today + 20,
  validated: true
  )
booking4.user = leonardo
booking4.boat = moneypenny
booking4.total_price = moneypenny.price_per_day * (booking4.end_date - booking4.start_date).to_i
booking4.save!
puts "booking4 created"

booking5 = Booking.new(
  start_date: Date.today + 70,
  end_date: Date.today + 84,
  validated: false
  )
booking5.user = leonardo
booking5.boat = willbefine
booking5.total_price = willbefine.price_per_day * (booking5.end_date - booking5.start_date).to_i
booking5.save!
puts "booking5 created"

booking6 = Booking.new(
  start_date: Date.today + 20,
  end_date: Date.today + 27,
  validated: false
  )
booking6.user = mick
booking6.boat = dune
booking6.total_price = dune.price_per_day * (booking6.end_date - booking6.start_date).to_i
booking6.save!
puts "booking6 created"

booking7 = Booking.new(
  start_date: Date.today - 94,
  end_date: Date.today - 83,
  validated: true
  )
booking7.user = mick
booking7.boat = dune
booking7.total_price = dune.price_per_day * (booking7.end_date - booking7.start_date).to_i
booking7.save!
puts "booking7 created"

booking8 = Booking.new(
  start_date: Date.today - 95,
  end_date: Date.today - 80,
  validated: true
  )
booking8.user = bollore
booking8.boat = dune
booking8.total_price = dune.price_per_day * (booking8.end_date - booking8.start_date).to_i
booking8.save!
puts "booking8 created"

booking9 = Booking.new(
  start_date: Date.today + 75,
  end_date: Date.today + 77,
  validated: false
  )
booking9.user = bollore
booking9.boat = dune
booking9.total_price = dune.price_per_day * (booking9.end_date - booking9.start_date).to_i
booking9.save!
puts "booking9 created"

booking10 = Booking.new(
  start_date: Date.today + 102,
  end_date: Date.today + 105,
  validated: true
  )
booking10.user = mick
booking10.boat = dune
booking10.total_price = dune.price_per_day * (booking10.end_date - booking10.start_date).to_i
booking10.save!
puts "booking10 created"

booking11 = Booking.new(
  start_date: Date.today + 32,
  end_date: Date.today + 40,
  validated: false
  )
booking11.user = mick
booking11.boat = dune
booking11.total_price = dune.price_per_day * (booking11.end_date - booking11.start_date).to_i
booking11.save!
puts "booking11 created"

booking12 = Booking.new(
  start_date: Date.today + 54,
  end_date: Date.today + 57,
  validated: false
  )
booking12.user = bollore
booking12.boat = dune
booking12.total_price = dune.price_per_day * (booking12.end_date - booking12.start_date).to_i
booking12.save!
puts "booking12 created"

booking13 = Booking.new(
  start_date: Date.today - 78,
  end_date: Date.today - 76,
  validated: true
  )
booking13.user = bollore
booking13.boat = dune
booking13.total_price = dune.price_per_day * (booking13.end_date - booking13.start_date).to_i
booking13.save!
puts "booking13 created"

booking14 = Booking.new(
  start_date: Date.today - 99,
  end_date: Date.today - 98,
  validated: true
  )
booking14.user = mick
booking14.boat = dune
booking14.total_price = dune.price_per_day * (booking14.end_date - booking14.start_date).to_i
booking14.save!
puts "booking7 created"

review1 = Review.new(
  content: "Not able to tell you how happy I am with this boat. We’ve used it for parties for the last five years." ,
  note: 5
  )
review1.user = mick
review1.booking = booking7
review1.save!
puts "review1 created"

review2 = Review.new(
  content: "We have no regrets! You won’t regret it." ,
  note: 4
  )
review2.user = bollore
review2.booking = booking8
review2.save!
puts "review2 created"

review3 = Review.new(
  content: "I will let my mum know about this, she could really make use of this boat! You guys rock!" ,
  note: 5
  )
review3.user = bollore
review3.booking = booking13
review3.save!
puts "review3 created"

review4 = Review.new(
  content: "I couldn’t have asked for more than this. I would gladly pay more for this boat. Thanks Leo!" ,
  note: 5
  )
review4.user = mick
review4.booking = booking14
review4.save!
puts "review4 created"

review5 = Review.new(
  content: "Wow what a great boat, I love it! It’s incredible" ,
  note: 3
  )
review5.user = leonardo
review5.booking = booking1
review5.save!
puts "review5 created"



