

User.destroy_all

puts "starting user creation"
user1 = User.create(email:"ludivine@example.com", password:"azerty", first_name: "Ludivine", last_name: "Boucher", address: "50 rue des mougins", zip_code: "69000", city: "Lyon", phone_number: "06 45 34 32 34")
user2 = User.create(email:"lea@example.com", password:"azerty", first_name: "Léa", last_name: "Simoni", address: "1 bis route des uluberlus", zip_code: "38000", city: "Grenoble", phone_number: "07 34 34 23 54")
user3 = User.create(email:"nerina@example.com", password:"azerty", first_name: "Nérina", last_name: "Phélut", address: "56 boulevard des roses", zip_code: "75013", city: "Paris", phone_number: "06 09 12 34 44")
puts "ending user creation"



puts "starting dress creation"
dress1 = Dress.create(brand: "Chanel", color: "Red", size: "XS", price: 150, description: "Style une épaule dénudée avec léger rembourrage et manche resserrée", user: user1)
file1 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714385/vh24wvymgup3valbrfco.jpg')
dress1.photo.attach(io: file1, filename: 'dress1.jpg', content_type: 'image/jpg' )

dress2 = Dress.create(brand: "Dior", color: "White", size: "S", price: 230, description: "Tissu dentelle froncée et bonnets à armatures rembourrés", user: user1)
file2 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714413/gux6yodrlg4r09myxh6t.jpg')
dress2.photo.attach(io: file2, filename: 'dress2.jpg', content_type: 'image/jpg' )

dress3 = Dress.create(brand: "Burberry", color: "Black", size: "M", price: 90, description: "Corsage avec armatures, Fermé par glissière dissimulée au dos", user: user1)
file3 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714406/ofefegogpcnpqrljqbns.jpg')
dress3.photo.attach(io: file3, filename: 'dress3.jpg', content_type: 'image/jpg' )

dress4 = Dress.create(brand: "Prada", color: "Parme", size: "M", price: 110, description: "Entièrement doublé", user: user2)
file4 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714406/ofefegogpcnpqrljqbns.jpg')
dress4.photo.attach(io: file4, filename: 'dress4.jpg', content_type: 'image/jpg' )
puts "ending dress creation"



puts "starting review creation"
rewiew1 = Review.create(rating: 3, description: "superbe", dress: dress1, user: user1)
rewiew2 = Review.create(rating: 3, description: "géniale", dress: dress2, user: user1)
rewiew3 = Review.create(rating: 5, description: "formidable", dress: dress2, user: user3)
puts "ending review creation"

puts "starting booking creation"
booking1 = Booking.create(start_rent_at: "01/06/2020", end_rent_at: "03/06/2020", dress: dress2, user: user3)
booking2 = Booking.create(start_rent_at: "01/06/2020", end_rent_at: "03/06/2020", dress: dress3, user: user3)
booking3 = Booking.create(start_rent_at: "01/06/2020", end_rent_at: "03/06/2020", dress: dress4, user: user1)
booking4 = Booking.create(start_rent_at: "01/06/2020", end_rent_at: "03/06/2020", dress: dress1, user: user2)
puts "ending booking creation"

