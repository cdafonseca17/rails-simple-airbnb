# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  flat = Flat.new(
    name: Faker::Address.city,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    price_per_night: [50, 60, 80, 90].sample,
    number_of_guests: [1, 2, 3, 4].sample
  )
  flat.save!
end

