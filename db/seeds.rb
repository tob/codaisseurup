# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Theme.destroy_all
User.destroy_all

modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")

mich = Event.create(
name:"Summer event", description: "Sun, water and food", location: "seaside", price: 12.50, capacity: 134, includes_food: true, includes_drinks: true, active: true, user: miriam, themes: [modern_and_minimal, sleek_and_sophisticated])

puts miriam
# puts mich.name
miriam.events.each { |event| puts event.id}
