# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Seeding restaurants..."

Restaurant.create!(
  [
    {
      name: "La Tour d'Argent",
      address: "15 Quai de la Tournelle, 75005 Paris",
      phone_number: "01 43 54 23 31",
      category: "french"
    },
    {
      name: "Sushi Samba",
      address: "Heron Tower, 110 Bishopsgate, London",
      phone_number: "020 3640 7330",
      category: "japanese"
    },
    {
      name: "Luigi's Trattoria",
      address: "123 Pasta Lane, Rome",
      phone_number: "+39 06 1234 5678",
      category: "italian"
    },
    {
      name: "Golden Dragon",
      address: "Chinatown, 28 Gerrard St, London",
      phone_number: "020 7734 2763",
      category: "chinese"
    },
    {
      name: "Chez Omar",
      address: "47 Rue de Bretagne, 75003 Paris",
      phone_number: "01 42 72 36 26",
      category: "french"
    }
  ]
)

puts "Done seeding!"

Restaurant.destroy_all
