# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")

mich = Event.create(
name:"Summer event", description: "Sun, water and food", location: "seaside", price: 12.50, capacity: 134, includes_food: true, includes_drinks: true, active: true, user: miriam)

puts miriam
# puts mich.name
miriam.events.each { |event| puts event.name}
