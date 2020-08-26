# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

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

holland = Boat.create( location: "24 Ijsbaanpad, Amsterdam", capacity: 2, user_id: 1, description: "Beautiful gold boat- great for day trips", price: 80.0)
# holland.user = roman
# holland.save
puts holland

onassis = Boat.create( location: "24 Albert Cuypstraat, Amsterdam", capacity: 8, user_id: 2, description: "Beautiful living boat- great for day trips", price: 200.0)
# onassis.user = jane
# onassis.save
puts onassis

big_boat = Boat.create( location: "50 Tweede Helmersstraat, Amsterdam", capacity: 10, user_id: 2,description: "Beautiful fast boat- great for day trips", price: 111.0)
# big_boat.user = jane
# big_boat.save
puts big_boat



boatypic = URI.open('https://i.kym-cdn.com/entries/icons/facebook/000/020/374/boaty---.jpg')
boaty.photo.attach(io: boatypic, filename: 'boatypic.png', content_type: 'image/png')

titanicpic = URI.open('https://media.nationalgeographic.org/assets/photos/000/273/27302_c0-41-990-701_r1050x700.jpg?d4ccf3044d9da0d0118103be3a76bd1319370847')
titanic.photo.attach(io: titanicpic, filename: 'titanicpic.png', content_type: 'image/png')

hollandpic = URI.open('https://travelandynews.com/wp-content/uploads/2020/01/56523192_10156483754543406_5725163698733973504_o.jpg')
holland.photo.attach(io: hollandpic, filename: 'hollandpic.png', content_type: 'image/png')

onassispic = URI.open('https://greece.greekreporter.com/files/606x341_230948_poleitai-xristina-o-onasis-ploi-696x391-1.jpg')
onassis.photo.attach(io: onassispic, filename: 'onassispic.png', content_type: 'image/png')

big_boatpic = URI.open('https://lh3.googleusercontent.com/proxy/0do-AtyvCSLGxM723dIH3Rnyb4NrXbHLjsk30LMOHj-hWJC4B1mtKTy_-dAeBvuA3kejzKJARyQ2ZbzRqTdbzxo3BmMd_wlMy8yFwElo5A')
big_boat.photo.attach(io: big_boatpic, filename: 'big_boatpic.png', content_type: 'image/png')


