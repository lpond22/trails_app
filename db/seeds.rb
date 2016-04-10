Review.delete_all
User.delete_all
Park.delete_all

p1 = Park.create!(name:'Middlesex Fells Reservation', city: 'Boston', state: 'MA', region: 'northeast', dogs: true, hikes: 5)
p2 = Park.create!(name: 'Blue Hills Reservation', city: 'Milton', state: 'MA', region: 'eastern', dogs: true, hikes: 10)
p3 = Park.create!(name: 'Memorial Forest', city: 'Sudbury', state: 'MA', region: 'central', dogs: true, hikes: 3)
p4 = Park.create!(name: 'Mass Audubon Wildlife Sanctuaries', city: 'Mattapan', state: 'MA', region: 'eastern', dogs: false, hikes: 4)

puts "Created four parks"

p1.reviews.create!(content: 'Beautiful hiking, my dog loved it! Too bad we couldn\'t go into the water', user: laura)
p2.reviews.create!(content: 'A bit too crowed for me', user: sawyer)
p3.reviews.create!(content: 'Our absolute favorite place to explore. Never get tired of it.', user: sean)
p4.reviews.create!(content: 'Too bad my dog couldn\'t come, he would love to chase the ducks.', user: bob)

puts "Created a few reviews"

laura = User.create!(email: 'laura@email.com', password: 'password', password_confirmation: 'password', first_name: 'Laura', last_name: 'Pond', admin: false)
sawyer = User.create!(email:'sawyer@email.com', password: 'password', password_confirmation: 'password', first_name: 'Sawyer', last_name: 'Dog', admin: false)
sean = User.create!(email: 'sean@email.com', password: 'password', password_confirmation: 'password', first_name: 'Sean', last_name: 'Gilpatrick', admin: false)
bob = User.create!(email: 'bob@email.com', password: 'password', password_confirmation: 'password', first_name: 'Bob', last_name: 'Sagat', admin: true)
