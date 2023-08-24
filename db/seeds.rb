# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'csv'

puts "Seeding data from CSV..."

CSV.foreach(Rails.root.join('lib/seed_csv/film_prices.csv'), headers: true) do |row|
  Film.create( {
    name: row["NAME"], 
    price: row["PRICE"],
    image: row["IMAGE"], 
    details: row["DETAILS"],
    stock: row["STOCK"]
  } ) 
end