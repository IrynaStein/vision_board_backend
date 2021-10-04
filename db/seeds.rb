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
puts "...stickers... "

s1 = Sticker.create(name: "water_symbol", category: "water", image_url: "https://live.staticflickr.com/65535/51500171763_5dc0abac52_o.png", coordinates: "x: 0, y: 0", init: true)

s2 = Sticker.create(name: "spiral", category: "water", image_url: "https://live.staticflickr.com/65535/51500873920_dfa6df153b_o.png", coordinates: "x: 0, y: 0", init: true)

s3 = Sticker.create(name: "wave", category: "water", image_url: "https://live.staticflickr.com/65535/51499151132_48a3f89308_o.png", coordinates: "x: 0, y: 0", init: true)

s4 = Sticker.create(name: "light_house", category: "water", image_url: "https://live.staticflickr.com/65535/51500873965_09fe28c27e_o.png", coordinates: "x: 0, y: 0", init: true)

s5 = Sticker.create(name: "steer", category: "water", image_url: "https://live.staticflickr.com/65535/51499151197_12f96ee9b9_o.png", coordinates: "x: 0, y: 0", init: true)

s6 = Sticker.create(name: "nautical_star", category: "water", image_url: "https://live.staticflickr.com/65535/51500874000_c9cae1a074_o.png", coordinates: "x: 0, y: 0", init: true)

s7 = Sticker.create(name: "anchor", category: "water", image_url: "https://live.staticflickr.com/65535/51500874015_becbbe1998_o.png", coordinates: "x: 0, y: 0", init: true)

puts "...quotes..."

q1 = Quote.create(paragraph: "Lifes' roughset storms prove the strength of our anchors", category: "water", init: true, coordinates: "x: 0, y: 0")
q2 = Quote.create(paragraph: "The cure for anything is saltwater – sweat, tears, or the sea", category: "water", init: true, coordinates: "x: 0, y: 0")
q3 = Quote.create(paragraph: "Waves are not as dangerous as fear of waves", category: "water", init: true, coordinates: "x: 0, y: 0")
q1a = Quote.create(paragraph: "Test quote for false init attribute", category: "water", init: false, coordinates: "x: 0, y: 0")

puts "SEEDING EARTH ASSETS..."
puts "...seeding stickers..."
s8 = Sticker.create(name: "mountain", category: "earth", image_url: "https://live.staticflickr.com/65535/51507821861_cc524c837d_o.png", coordinates: "x: 0, y: 0", init: true)

s9 = Sticker.create(name: "leaf", category: "earth", image_url: "https://live.staticflickr.com/65535/51508747110_760e1427ee_o.png", coordinates: "x: 0, y: 0", init: true)

s10 = Sticker.create(name: "hibiscus", category: "earth", image_url: "https://live.staticflickr.com/65535/51508045158_9d187f8fb5_o.png", coordinates: "x: 0, y: 0", init: true)

s11 = Sticker.create(name: "ficus", category: "earth", image_url: "https://live.staticflickr.com/65535/51508045193_1398d97739_o.png", coordinates: "x: 0, y: 0", init: true)

s12 = Sticker.create(name: "branch", category: "earth", image_url: "https://live.staticflickr.com/65535/51508045223_d0477841ed_o.png", coordinates: "x: 0, y: 0", init: true)

s13 = Sticker.create(name: "earth-spiral", category: "earth", image_url: "https://live.staticflickr.com/65535/51507821946_e12d1845dc_o.png", coordinates: "x: 0, y: 0", init: true)

puts "...quotes..."
q4 = Quote.create(paragraph: "Climb mountains not so the world can see you, but so you can see the world", category: "earth", init: true, coordinates: "x: 0, y: 0")
q5 = Quote.create(paragraph: "The best view comes after the hardest climb", category: "earth", init: true, coordinates: "x: 0, y: 0")
q6 = Quote.create(paragraph: "Every mountain top is within reach if you just keep climbing", category: "earth", init: true, coordinates: "x: 0, y: 0")
q4a = Quote.create(paragraph: "Test quote for false init attribute", category: "earth", init: false, coordinates: "x: 0, y: 0")


puts "Done! Success"