# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "Seeding users..."

user1 = User.create(name: "Iryna", username: "iryna", password: "admin123", password_confirmation: "admin123", email: "isophiestein@gmail.com")

puts "Seeding water stickers... "

s1 = Sticker.create(name: "water_symbol", category: "water", image_url: "https://live.staticflickr.com/65535/51500171763_5dc0abac52_o.png", coordinates: "")

s2 = Sticker.create(name: "spiral", category: "water", image_url: "https://live.staticflickr.com/65535/51500873920_dfa6df153b_o.png", coordinates: "")

s3 = Sticker.create(name: "wave", category: "water", image_url: "https://live.staticflickr.com/65535/51499151132_48a3f89308_o.png", coordinates: "")

s4 = Sticker.create(name: "light_house", category: "water", image_url: "https://live.staticflickr.com/65535/51500873965_09fe28c27e_o.png", coordinates: "")

s5 = Sticker.create(name: "steer", category: "water", image_url: "https://live.staticflickr.com/65535/51499151197_12f96ee9b9_o.png", coordinates: "")

s6 = Sticker.create(name: "nautical_star", category: "water", image_url: "https://live.staticflickr.com/65535/51500874000_c9cae1a074_o.png", coordinates: "")

s7 = Sticker.create(name: "anchor", category: "water", image_url: "https://live.staticflickr.com/65535/51500874015_becbbe1998_o.png", coordinates: "")

puts "Done! Success"
