# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "starting user creation"

user1 = User.create!(email:"Ludivine@example.com", password:"azert", first_name: "Ludivine", last_name: "boucher", address: "50 rue des mougins", zip_code: "69000", city: "Lyon", phone_number: "06 45 34 32 34")
user2 = User.create!(email:"Lea@example.com", password:"azert", first_name: "léa", last_name: "simoni", address: "1 bis route des uluberlus", zip_code: "01300", city: "Ambléon", phone_number: "07 34 34 23 54")
user3 = User.create!(email:"Nerina@example.com", password:"azert", first_name: "Nérina", last_name: "phélut", address: "56 boulevard des roses", zip_code: "75013", city: "Paris", phone_number: "06 09 12 34 44")
puts "ending user creation"
puts "starting dress creation"
dress1 = Dress.create!(brand: "Chanel", color: "red", size: "XS", price: 150, description: "Style une épaule dénudée avec léger rembourrage et manche resserrée", user: user1)
dress2 = Dress.create!(brand: "Dior", color: "white", size: "S", price: 230, description: "Tissu dentelle froncée et bonnets à armatures rembourrés", user: user1)
dress3 = Dress.create!(brand: "Burberry", color: "bkack", size: "M", price: 90, description: "Corsage avec armatures, Fermé par glissière dissimulée au dos", user: user1)
dress4 = Dress.create!(brand: "Prada", color: "Parme", size: "M", price: 110, description: "Entièrement doublé", user: user2)
puts "ending dress creation"
puts "starting review creation"
rewiew1 = Review.create!(rating:, description:, dress:, user: user1)
rewiew1 = Review.create!(rating:, description:, dress:, user: user1)
rewiew1 = Review.create!(rating:, description:, dress:, user: user3)
puts "ending review creation"
puts "starting booking creation"
booking1 = Booking.create!(start_rent_at:, end_rent_at:, dress:, user: user2)
booking1 = Booking.create!(start_rent_at:, end_rent_at:, dress:, user: user2)
booking1 = Booking.create!(start_rent_at:, end_rent_at:, dress:, user: user2)
booking1 = Booking.create!(start_rent_at:, end_rent_at:, dress:, user: user2)
puts "ending booking creation"
