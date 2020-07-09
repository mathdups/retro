# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Product.destroy_all

puts "Creating products..."
snes = { title: "snes", price: "120", description: "Amazing snes console" }
megadrive =  { title: "megadrive", price: "150", description: "Amazing megadrive console"}

[ snes, megadrive ].each do |attributes|
  product = Product.create!(attributes)
  puts "Created #{product.title}"
end
puts "Finished!"
