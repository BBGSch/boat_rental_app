# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roman = User.create(email: "user@example.com", password: "123ABC", name: "Roman Abramovich")
puts roman
jane = User.create(email: "user2@example.com", password: "123ABC", name: "Jane Abramovich")
puts jane

boaty = Boat.create( location: "24 Tweede Helmersstraat, Amsterdam", user_id: 1, capacity: 6, description: "Beautiful old boat- great for day trips", price: 99.0)
#boaty.user = roman
#boaty.save
puts boaty

titanic = Boat.create( location: "24 Prins Hendrikkade, Amsterdam", capacity: 3, user_id: 1, description: "Beautiful new boat- great for day trips", price: 110.0)
# titanic.user = roman
# titanic.save
puts titanic

holland = Boat.create( location: "24 Ijsbanpaad, Amsterdam", capacity: 2, user_id: 1, description: "Beautiful gold boat- great for day trips", price: 80.0)
# holland.user = roman
# holland.save
puts holland

onassis = Boat.create( location: "24 Albert Kuypstraat, Amsterdam", capacity: 8, user_id: 2, description: "Beautiful living boat- great for day trips", price: 200.0)
# onassis.user = jane
# onassis.save
puts onassis

big_boat = Boat.create( location: "50 Tweede Helmersstraat, Amsterdam", capacity: 10, user_id: 2,description: "Beautiful fast boat- great for day trips", price: 111.0)
# big_boat.user = jane
# big_boat.save
puts big_boat





# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "Light rum")
# Ingredient.create(name: "Applejack")
# Ingredient.create(name: "Light rum")
# Ingredient.create(name: "Gin")
# Ingredient.create(name: "Dark rum")
# Ingredient.create(name: "Sweet Vermouth")
# Ingredient.create(name: "Strawberry schnapps")
# Ingredient.create(name: "Champagne")
# Ingredient.create(name: "Bitters")
# Ingredient.create(name: "Sugar")
# Dose.create(description: "4cl dark rum", cocktail_id: 1 , ingredient_id: 7)
# Dose.create(description: "lemon", cocktail_id: 1 , ingredient_id: 1)
# Dose.create(description: "ice", cocktail_id: 1 , ingredient_id: 2)
# Dose.create(description: "ice", cocktail_id: 3 , ingredient_id: 1)
# Dose.create(description: "gin", cocktail_id: 3 , ingredient_id: 7)
# Dose.create(description: "lemon", cocktail_id: 3 , ingredient_id: 1)
# darknstormy = Cocktail.create(name: "Dark & Stormy")
# whiterussian = Cocktail.create(name: "White Russian")
# tomcollins = Cocktail.create(name: "Tom Collins")
# pornstarmartini = Cocktail.create(name: "Pornstar Martini")
# oldfashioned = Cocktail.create(name: "Old Fashioned")
# piscosour = Cocktail.create(name: "Pisco Sour")
# darknstormypic = URI.open('https://www.liquor.com/thmb/vVQTKLEt9sxWKFFTCycXwkjOgrU=/735x0/dark-and-stormy-720x720-recipe-95f288ed6697444ab3301f8670b4564e.jpg')
# darknstormy.photo.attach(io: darknstormypic, filename: 'darknstormypic.png', content_type: 'image/png')
# whiterussianpic = URI.open('https://i.pinimg.com/originals/af/d2/4c/afd24c5047e6aaa1cfbe4dd8e8d7468f.jpg')
# whiterussian.photo.attach(io: whiterussianpic, filename: 'whiterussianpic.png', content_type: 'image/png')
# tomcollinspic = URI.open('https://thehomecocktail.club/wp-content/uploads/2020/03/tom-collins-cocktail-1.jpg')
# tomcollins.photo.attach(io: tomcollinspic, filename: 'tomcollinspic.png', content_type: 'image/png')
# pornstarmartinipic = URI.open('https://dronkenginger.nl/wp-content/uploads/2019/02/Porn-Star-martini-400x500.jpg')
# pornstarmartini.photo.attach(io: pornstarmartinipic, filename: 'pornstarmartinipic.png', content_type: 'image/png')
# oldfashionedpic = URI.open('https://d32miag6ta013h.cloudfront.net/master_cocktails/2869/en-us/small/old-fashioned-sml-470x594.jpg')
# oldfashioned.photo.attach(io: oldfashionedpic, filename: 'oldfashionedpic.png', content_type: 'image/png')
# piscosourpic = URI.open('https://alushlifemanual.com/wp-content/uploads/2020/04/Pisco-Sour.jpg')
# piscosour.photo.attach(io: piscosourpic, filename: 'piscosourpic.png', content_type: 'image/png')


