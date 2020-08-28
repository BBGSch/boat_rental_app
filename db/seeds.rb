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
pauper1 = User.create(email: "user3@example.com", password: "123ABC", name: "Joop Daalder")
puts pauper1
pauper2 = User.create(email: "user4@example.com", password: "123ABC", name: "Jannie Daalder")
puts pauper2
pauper3 = User.create(email: "user5@example.com", password: "123ABC", name: "Danny Daalder")
puts pauper3
pauper4 = User.create(email: "user6@example.com", password: "123ABC", name: "Dalia Daalder")
puts pauper4




boaty = Boat.create( location: "24 Tweede Helmersstraat, Amsterdam", user_id: 1, capacity: 6, description: "Beautiful old boat- great for day trips", price: 99.0)
#boaty.user = roman
#boaty.save
puts boaty

titanic = Boat.create( location: "24 Prins Hendrikkade, Amsterdam", capacity: 3, user_id: 1, description: "Authentic wooden boat - high quality", price: 110.0)
# titanic.user = roman
# titanic.save
puts titanic

holland = Boat.create( location: "24 Ijsbaanpad, Amsterdam", capacity: 2, user_id: 1, description: "Bulldog Amsterdam boat for rent - fun ensured", price: 80.0)
# holland.user = roman
# holland.save
puts holland

onassis = Boat.create( location: "24 Albert Cuypstraat, Amsterdam", capacity: 8, user_id: 2, description: "Large wooden boat incl. free drinks", price: 200.0)
# onassis.user = jane
# onassis.save
puts onassis

big_boat = Boat.create( location: "50 Tweede Helmersstraat, Amsterdam", capacity: 10, user_id: 2,description: "Easy-to-use electric boat - small but fun", price: 111.0)
# big_boat.user = jane
# big_boat.save
puts big_boat



boatypic = URI.open('https://www.rederijdejordaan.amsterdam/media/boten/Salonboot-Rondvaartboot-huren-grachten-amsterdam-farahilde.jpg')
boaty.photo.attach(io: boatypic, filename: 'boatypic.png', content_type: 'image/png')

titanicpic = URI.open('https://www.verflaag.nl/wp-content/uploads/2019/02/Houten-boot-lakken-blanke-lak.jpg')
titanic.photo.attach(io: titanicpic, filename: 'titanicpic.png', content_type: 'image/png')

hollandpic = URI.open('https://www.thebulldog.com/thebulldog1/wp-content/uploads/The-Bulldog-Boat-2020.jpg')
holland.photo.attach(io: hollandpic, filename: 'hollandpic.png', content_type: 'image/png')

onassispic = URI.open('https://flyingdutchboats.com/wp-content/uploads/2018/10/flyingdutchboats.com_d79b_1524058578-whatsapp-image-2017-12-02-at-15-58-24-2-1920x750_c.jpeg')
onassis.photo.attach(io: onassispic, filename: 'onassispic.png', content_type: 'image/png')

big_boatpic = URI.open('https://mokumbootverhuur.nl/wp-content/uploads/2019/04/19-min-1-1024x380.jpg')
big_boat.photo.attach(io: big_boatpic, filename: 'big_boatpic.png', content_type: 'image/png')


reservation1 = Reservation.create(user_id: 3, boat_id: 1, start_date: Date.new(2020, 12, 8), end_date: Date.new(2020, 12, 20), total_price: 100.0, status: false)
puts reservation1

reservation2 = Reservation.create(user_id: 3, boat_id: 2, start_date: Date.new(2020, 10, 10), end_date: Date.new(2020, 10, 20), total_price: 200.0, status: false)
puts reservation2

reservation3 = Reservation.create(user_id: 4, boat_id: 3, start_date: Date.new(2020, 9, 10), end_date: Date.new(2020, 9, 20), total_price: 300.0, status: false)
puts reservation3

reservation4 = Reservation.create(user_id: 4, boat_id: 4, start_date: Date.new(2020, 11, 10), end_date: Date.new(2020, 11, 20), total_price: 350.0, status: false)
puts reservation4

reservation5 = Reservation.create(user_id: 5, boat_id: 5, start_date: Date.new(2020, 10, 10), end_date: Date.new(2020, 10, 20), total_price: 250.0, status: false)
puts reservation5

reservation6 = Reservation.create(user_id: 6, boat_id: 1, start_date: Date.new(2020, 11, 10), end_date: Date.new(2020, 11, 20), total_price: 150.0, status: false)
puts reservation6


# past reservations

reservation7 = Reservation.create(user_id: 4, boat_id: 1, start_date: Date.new(2019, 12, 8), end_date: Date.new(2019, 12, 20), total_price: 100.0, status: false)
puts reservation7

reservation8 = Reservation.create(user_id: 4, boat_id: 2, start_date: Date.new(2019, 10, 10), end_date: Date.new(2019, 10, 20), total_price: 200.0, status: false)
puts reservation8

reservation9 = Reservation.create(user_id: 5, boat_id: 3, start_date: Date.new(2019, 9, 10), end_date: Date.new(2019, 9, 20), total_price: 300.0, status: false)
puts reservation9

reservation10 = Reservation.create(user_id: 5, boat_id: 4, start_date: Date.new(2019, 11, 10), end_date: Date.new(2019, 11, 20), total_price: 350.0, status: false)
puts reservation10

reservation11 = Reservation.create(user_id: 6, boat_id: 5, start_date: Date.new(2019, 10, 10), end_date: Date.new(2019, 10, 20), total_price: 250.0, status: false)
puts reservation11

reservation12 = Reservation.create(user_id: 6, boat_id: 1, start_date: Date.new(2019, 11, 10), end_date: Date.new(2019, 11, 20), total_price: 150.0, status: false)
puts reservation12





review1 = Review.create(user_id: 4, reservation_id: 7, stars: 3, title: "pretty, pretty good", description: "Bit tiny for my taste but otherwise enjoyable")
puts review1

review2 = Review.create(user_id: 4, reservation_id: 8, stars: 4, title: "good party boat", description: "Ideal boat for bachelorette party. thank you")
puts review2

review3 = Review.create(user_id: 5, reservation_id: 9, stars: 2, title: "dissapointing", description: "No bathroom inside. Dissapointing")
puts review3

review4 = Review.create(user_id: 5, reservation_id: 10, stars: 4, title: "good party boat", description: "Ideal boat for bachelorette party. thank you")
puts review4

review5 = Review.create(user_id: 6, reservation_id: 11, stars: 3, title: "pretty, pretty good", description: "Bit tiny for my taste but otherwise enjoyable")
puts review5

review6 = Review.create(user_id: 6, reservation_id: 12, stars: 2, title: "dissapointing", description: "No bathroom inside. Dissapointing")
puts review6



