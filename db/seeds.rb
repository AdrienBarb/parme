

User.destroy_all

puts "starting user creation"
user1 = User.create(email:"djondet@gmail.com", password:"azerty", first_name: "Didier", last_name: "Jontet", address: "20 rue des Capucins", zip_code: "69002", city: "Lyon", phone_number: "06 45 34 32 34")
user2 = User.create(email:"lea@example.com", password:"azerty", first_name: "Léa", last_name: "Simoni", address: "1 bis route des uluberlus", zip_code: "69003", city: "Lyon", phone_number: "07 34 34 23 54")
user3 = User.create(email:"josephine@example.com", password:"azerty", first_name: "Joséphine", last_name: "Phélut", address: "56 boulevard des roses", zip_code: "69004", city: "Lyon", phone_number: "06 09 12 34 44")
user4 = User.create(email:"pepita@example.com", password:"azerty", first_name: "Pepita", last_name: "De la Vega", address: "56 boulevard des roses", zip_code: "69005", city: "Lyon", phone_number: "06 09 12 33 44")
user5 = User.create(email:"jean@example.com", password:"azerty", first_name: "Jean", last_name: "De la Fontaine", address: "56 boulevard des roses", zip_code: "69006", city: "Lyon", phone_number: "06 09 12 32 44")
puts "ending user creation"



puts "starting dress creation"

dress1 = Dress.create(brand: "Chanel", color: "Jaune", size: "S", price: 150, description: "Style une épaule dénudée avec léger rembourrage et manche resserrée", user: user1)
file1 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714385/vh24wvymgup3valbrfco.jpg')
dress1.photo.attach(io: file1, filename: 'dress1.jpg', content_type: 'image/jpg')

dress2 = Dress.create(brand: "Dior", color: "Blanc", size: "S", price: 175, description: "Tissu dentelle froncée et bonnets à armatures rembourrés", user: user1)
file2 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714413/gux6yodrlg4r09myxh6t.jpg')
dress2.photo.attach(io: file2, filename: 'dress2.jpg', content_type: 'image/jpg' )

dress3 = Dress.create(brand: "Saint Laurent", color: "Beige", size: "M", price: 90, description: "Corsage avec armatures, Fermé par glissière dissimulée au dos", user: user1)
file3 = URI.open('https://res.cloudinary.com/dklrntmo9/image/upload/v1591714406/ofefegogpcnpqrljqbns.jpg')
dress3.photo.attach(io: file3, filename: 'dress3.jpg', content_type: 'image/jpg' )

dress4 = Dress.new(brand: "Fendi", color: "Rose", size: "S", price: 100, description: "Longue robe à col montant et manches longues, coupe proche du corps. Réalisé en viscose et coton rose.", user: user2)
dress4.photo.attach(io: open('images_seed/Robe1.png'), filename: 'dress3.png', content_type: 'image/png' )
dress4.save!

dress5 = Dress.new(brand: "Chanel", color: "Bleu", size: "S", price: 105, description: "Robe mi-longue style chemisier avec coupe cintrée et jupe asymétrique à plis.", user: user2)
dress5.photo.attach(io: open('images_seed/Robe2.png'), filename: 'dress3.png', content_type: 'image/png' )
dress5.save!

dress6 = Dress.new(brand: "Gucci", color: "Noir", size: "S", price: 130, description: "Robe courte coupe chemise, avec bas asymétrique plus long au dos. Col ouvert et poche poitrine plaquée avec motif FF.", user: user2)
dress6.photo.attach(io: open('images_seed/Robe3.png'), filename: 'dress3.png', content_type: 'image/png' )
dress6.save!

dress7 = Dress.new(brand: "Fendi", color: "Doré", size: "S", price: 195, description: "Robe longue drapée, avec col profond en V et manches aux coudes. Fermeture zippée et découpe dans le dos.", user: user2)
dress7.photo.attach(io: open('images_seed/Robe4.png'), filename: 'dress3.png', content_type: 'image/png' )
dress7.save!

dress8 = Dress.new(brand: "Fendi", color: "Beige", size: "S", price: 120, description: "Robe mi-longue coupe chemise et fentes latérales dans le bas. Avec un col classique et serre-poignets hauts.", user: user2)
dress8.photo.attach(io: open('images_seed/Robe5.png'), filename: 'dress3.png', content_type: 'image/png' )
dress8.save!

dress9 = Dress.new(brand: "Prada", color: "Blanc", size: "S", price: 120, description: "Une cascade de volants orne cette robe en popeline de coton parée de dentelle.", user: user3)
dress9.photo.attach(io: open('images_seed/Robe6.png'), filename: 'dress3.png', content_type: 'image/png' )
dress9.save!

dress10 = Dress.new(brand: "Prada", color: "Bleu", size: "S", price: 85, description: "Des éléments rétros fusionnent dans cette robe en sablé léger.", user: user3)
dress10.photo.attach(io: open('images_seed/Robe7.png'), filename: 'dress3.png', content_type: 'image/png' )
dress10.save!

dress11 = Dress.new(brand: "Louis Vuitton", color: "Beige", size: "S", price: 110, description: "Un détail plissé torsadé sur le col rond orne cette robe fluide en crêpe sablé.", user: user4)
dress11.photo.attach(io: open('images_seed/Robe8.png'), filename: 'dress3.png', content_type: 'image/png' )
dress11.save!

dress12 = Dress.new(brand: "Prada", color: "Noir", size: "S", price: 125, description: "Cette robe en satin stretch se caractérise par sa silhouette asymétrique et son allure moderne.", user: user4)
dress12.photo.attach(io: open('images_seed/Robe9.png'), filename: 'dress3.png', content_type: 'image/png' )
dress12.save!

dress13 = Dress.new(brand: "Lagarfeld", color: "Noir", size: "S", price: 115, description: "Cette robe en popeline arbore un imprimé animalier. Des fronces et des nœuds ornent avec style ce vêtement.", user: user4)
dress13.photo.attach(io: open('images_seed/Robe10.png'), filename: 'dress3.png', content_type: 'image/png' )
dress13.save!

dress14 = Dress.new(brand: "Louis Vuitton", color: "Beige", size: "S", price: 170, description: "Avec son large motif Monogram en tissage jacquard discret, cette robe trapèze est emblématique de Louis Vuitton.", user: user4)
dress14.photo.attach(io: open('images_seed/Robe11.png'), filename: 'dress3.png', content_type: 'image/png' )
dress14.save!

dress15 = Dress.new(brand: "Louis Vuitton", color: "Beige", size: "S", price: 175, description: "Robe mi-longue à taille marquée, manches bouffantes et jupe coupe trapèze. Fermeture par boutons et découpe dans le dos.", user: user3)
dress15.photo.attach(io: open('images_seed/Robe12.png'), filename: 'dress3.png', content_type: 'image/png' )
dress15.save!

puts "ending dress creation"

