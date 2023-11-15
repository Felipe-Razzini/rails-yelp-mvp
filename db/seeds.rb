# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
z_deli = { name: 'Zdeli', address: 'Rua Francisco Leitão, 16, Sao Paulo', phone_number: '+55 11 2305-2200', category: 'italian' }
otemba = { name: 'Otemba', address: 'Kinkerstraat 56A, 1053 DZ Amsterdam', phone_number: '+31 6 20 40 60', category: 'chinese' }
chun = { name: 'Chun', address: 'Berenstraat 8, 1016 GH Amsterdam', phone_number: '+31 6 50 60 70', category: 'belgian' }
entrecote = { name: 'Entrecote de Paris', address: 'Alameda Min. Rocha Azevedo, 1041, Sao Paulo', phone_number: '+55 11 2495-3431', category: 'french' }
kitchin = { name: 'Kitchin', address: 'R. Iaiá, 83, São Paulo', phone_number: '+55 11 2339-2072', category: 'japanese' }

[z_deli, otemba, chun, entrecote, kitchin].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
