# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Board.destroy_all
Quote.destroy_all
Sticker.destroy_all
Frame.destroy_all
Post.destroy_all

puts "SEEDING USERS..."

user1 = User.create(name: "Iryna", username: "iryna", password: "admin123", password_confirmation: "admin123", email: "isophiestein@gmail.com")

puts "SEEDING WATER ASSETS..."
puts "seeding water stickers... "

s1 = Sticker.create(name: "water_symbol", category: "water", image_url: "https://live.staticflickr.com/65535/51564499705_c0e38f0a3a_o.png", coordinates: "x: 305, y: 268", init: true)

s2 = Sticker.create(name: "spiral", category: "water", image_url: "https://live.staticflickr.com/65535/51500873920_dfa6df153b_o.png", coordinates: "x: 407, y: 327", init: true)

s3 = Sticker.create(name: "wave", category: "water", image_url: "https://live.staticflickr.com/65535/51499151132_48a3f89308_o.png", coordinates: "x: 305, y: 399", init: true)

s4 = Sticker.create(name: "light_house", category: "water", image_url: "https://live.staticflickr.com/65535/51500873965_09fe28c27e_o.png", coordinates: "x: 191, y: 327", init: true)

s5 = Sticker.create(name: "steer", category: "water", image_url: "https://live.staticflickr.com/65535/51499151197_12f96ee9b9_o.png", coordinates: "x: 406, y: 210", init: true)

s6 = Sticker.create(name: "nautical_star", category: "water", image_url: "https://live.staticflickr.com/65535/51500874000_c9cae1a074_o.png", coordinates: "x: 197, y: 210", init: true)

s7 = Sticker.create(name: "anchor", category: "water", image_url: "https://live.staticflickr.com/65535/51500874015_becbbe1998_o.png", coordinates: "x: 305, y: 137", init: true)

puts "...water quotes..."

q1 = Quote.create(paragraph: "Lifes' roughset storms prove the strength of our anchors", category: "water", init: true, coordinates: "x: 0, y: 0")
q2 = Quote.create(paragraph: "The cure for anything is saltwater – sweat, tears, or the sea", category: "water", init: true, coordinates: "x: 0, y: 0")
q3 = Quote.create(paragraph: "Waves are not as dangerous as fear of waves", category: "water", init: true, coordinates: "x: 0, y: 0")
q1a = Quote.create(paragraph: "Test quote for false init attribute", category: "water", init: false, coordinates: "x: 0, y: 0")

puts "SEEDING EARTH ASSETS..."
puts "...seeding earth stickers..."

s7a = Sticker.create(name: "earth_symbol", category: "earth", image_url: "https://live.staticflickr.com/65535/51564499735_c46361ef2b_o.png", coordinates: "x: 305, y: 268", init: true)

s8 = Sticker.create(name: "mountain", category: "earth", image_url: "https://live.staticflickr.com/65535/51507821861_cc524c837d_o.png", coordinates: "x: 407, y: 327", init: true)

s9 = Sticker.create(name: "leaf", category: "earth", image_url: "https://live.staticflickr.com/65535/51508747110_760e1427ee_o.png", coordinates: "x: 305, y: 399", init: true)

s10 = Sticker.create(name: "hibiscus", category: "earth", image_url: "https://live.staticflickr.com/65535/51508045158_9d187f8fb5_o.png", coordinates: "x: 191, y: 327", init: true)

s11 = Sticker.create(name: "ficus", category: "earth", image_url: "https://live.staticflickr.com/65535/51508045193_1398d97739_o.png", coordinates: "x: 406, y: 210", init: true)

s12 = Sticker.create(name: "branch", category: "earth", image_url: "https://live.staticflickr.com/65535/51508045223_d0477841ed_o.png", coordinates: "x: 197, y: 210", init: true)

s13 = Sticker.create(name: "earth-spiral", category: "earth", image_url: "https://live.staticflickr.com/65535/51507821946_e12d1845dc_o.png", coordinates: "x: 305, y: 137", init: true)

puts "...earth quotes..."
q4 = Quote.create(paragraph: "Climb mountains not so the world can see you, but so you can see the world", category: "earth", init: true, coordinates: "x: 0, y: 0")
q5 = Quote.create(paragraph: "The best view comes after the hardest climb", category: "earth", init: true, coordinates: "x: 0, y: 0")
q6 = Quote.create(paragraph: "Every mountain top is within reach if you just keep climbing", category: "earth", init: true, coordinates: "x: 0, y: 0")

puts "SEEDING AIR ASSETS..."
puts "...seeding air stickers..."

s13a = Sticker.create(name: "air_symbol", category: "air", image_url: "https://live.staticflickr.com/65535/51562775847_7e2d47e58c_o.png", coordinates: "x: 305, y: 268", init: true)

s14 = Sticker.create(name: "air spiral", category: "air", image_url: "https://live.staticflickr.com/65535/51563125618_6fbb6b2fac_o.png", coordinates: "x: 407, y: 327", init: true)

s15 = Sticker.create(name: "air baloon", category: "air", image_url: "https://live.staticflickr.com/65535/51562878571_7e379a6282_o.png", coordinates: "x: 305, y: 399", init: true)

s16 = Sticker.create(name: "thought bubble", category: "air", image_url: "https://live.staticflickr.com/65535/51563569044_f8b7aff513_o.png", coordinates: "x: 191, y: 327", init: true)

s17 = Sticker.create(name: "lotus", category: "air", image_url: "https://live.staticflickr.com/65535/51563125578_39f9e04625_o.png", coordinates: "x: 406, y: 210", init: true)

s18 = Sticker.create(name: "breeze", category: "air", image_url: "https://live.staticflickr.com/65535/51563808870_749911d012_o.png", coordinates: "x: 197, y: 210", init: true)

s19 = Sticker.create(name: "cloud", category: "air", image_url: "https://live.staticflickr.com/65535/51562878511_a63fba6dbf_o.png", coordinates: "x: 305, y: 137", init: true)

puts "...air quotes..."
q7 = Quote.create(paragraph: "Happiness comes the way the wind blows", category: "air", init: true, coordinates: "x: 0, y: 0")
q8 = Quote.create(paragraph: "If you want to fly, give up everything that weights you down", category: "air", init: true, coordinates: "x: 0, y: 0")
q9 = Quote.create(paragraph: "Those that can bend with the wind, will weather the storm", category: "air", init: true, coordinates: "x: 0, y: 0")


puts "SEEDING FIRE ASSETS..."
puts "...seeding fire stickers..."

s19a = Sticker.create(name: "fire_symbol", category: "fire", image_url: "https://live.staticflickr.com/65535/51564499760_c37b194e79_o.png", coordinates: "x: 305, y: 268", init: true)

s20 = Sticker.create(name: "flame symbol", category: "fire", image_url: "https://live.staticflickr.com/65535/51563072251_9729ba0261_o.png", coordinates: "x: 305, y: 137", init: true)

s21 = Sticker.create(name: "flame spiral", category: "fire", image_url: "https://live.staticflickr.com/65535/51563072236_90f7d096d6_o.png", coordinates: "x: 305, y: 399", init: true)

s22 = Sticker.create(name: "sun", category: "fire", image_url: "https://live.staticflickr.com/65535/51563321013_a753039334_o.png", coordinates: "x: 191, y: 327", init: true)

s23 = Sticker.create(name: "soft flame", category: "fire", image_url: "https://live.staticflickr.com/65535/51562282062_7892fae76b_o.png", coordinates: "x: 406, y: 210", init: true)

s24 = Sticker.create(name: "tribal sun", category: "fire", image_url: "https://live.staticflickr.com/65535/51563073836_097720ae11_o.png", coordinates: "x: 197, y: 210", init: true)

s25 = Sticker.create(name: "candle", category: "fire", image_url: "https://live.staticflickr.com/65535/51563567681_e84479e351_o.png", coordinates: "x: 407, y: 327", init: true)

puts "...fire quotes..."
q10 = Quote.create(paragraph: "The finest steel has to go through the hottest fire", category: "fire", init: true, coordinates: "x: 0, y: 0")
q11 = Quote.create(paragraph: "The most powerful weapon on earth is the human soul on fire", category: "fire", init: true, coordinates: "x: 0, y: 0")
q12 = Quote.create(paragraph: "A spark of kindness starts a fire of love", category: "fire", init: true, coordinates: "x: 0, y: 0")


puts "Done! Success"