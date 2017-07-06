# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.delete_all
Theme.delete_all
Event.delete_all
Profile.delete_all
User.delete_all


modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
event_with_a_view = Theme.create(name: "Event with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")

mich = Event.create(
name:"Summer event", description: "Sun, water and food", location: "seaside", price: 12.50, capacity: 134, includes_food: true, includes_drinks: true, active: true, user: miriam, themes: [modern_and_minimal, sleek_and_sophisticated],starts_at: 0, ends_at: 0,)

puts miriam
# puts mich.name
miriam.events.each { |event| puts event.id}

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)

photo7 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
photo8 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
photo9 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxbktwxl/image/upload/v1499336038/sample.jpg", event: mich)
