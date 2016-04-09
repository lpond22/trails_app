Review.delete_all
Park.delete_all

p1 = Park.create!(name:'Middlesex Fells Reservation', city: 'Boston', state: 'MA', region: 'northeast', dogs: true, hikes: 5)
p2 = Park.create!(name: 'Blue Hills Reservation', city: 'Milton', state: 'MA', region: 'eastern', dogs: true, hikes: 10)
p3 = Park.create!(name: 'Memorial Forest', city: 'Sudbury', state: 'MA', region: 'central', dogs: true, hikes: 3)
p4 = Park.create!(name: 'Mass Audubon Wildlife Sanctuaries', city: 'Mattapan', state: 'MA', region: 'eastern', dogs: false, hikes: 4)

puts "Created four parks"

p1.reviews.create!(content: 'Beautiful hiking, my dog loved it! Too bad we couldn\'t go into the water', email: 'boshiking@email.com')
p2.reviews.create!(content: 'A bit too crowed for me', email: 'sawyer@email.com')
p3.reviews.create!(content: 'Our absolute favorite place to explore. Never get tired of it.', email: 'beth@email.com')
p4.reviews.create!(content: 'Too bad my dog couldn\'t come, he would love to chase the ducks.', email: 'birdwatcher@gmail.com')
