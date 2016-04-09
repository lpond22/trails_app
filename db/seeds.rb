Park.delete_all

Park.create!(name:'Middlesex Fells Reservation', city: 'Boston', state: 'MA', region: 'northeast', dogs: true, hikes: 5)
Park.create!(name: 'Blue Hills Reservation', city: 'Milton', state: 'MA', region: 'eastern', dogs: true, hikes: 10)
Park.create!(name: 'Memorial Forest', city: 'Sudbury', state: 'MA', region: 'central', dogs: true, hikes: 3)
Park.create!(name: 'Mass Audubon Wildlife Sanctuaries', city: 'Mattapan', state: 'MA', region: 'eastern', dogs: false, hikes: 4)

puts "Created four parks"
