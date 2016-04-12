Review.delete_all
Trail.delete_all
Park.delete_all
User.delete_all

p1 = Park.create!(name:'Middlesex Fells Reservation', city: 'Boston', state: 'MA', region: 'northeast', dogs: true, hikes: 5)
p2 = Park.create!(name: 'Blue Hills Reservation', city: 'Milton', state: 'MA', region: 'eastern', dogs: true, hikes: 10)
p3 = Park.create!(name: 'Memorial Forest', city: 'Sudbury', state: 'MA', region: 'central', dogs: true, hikes: 3)
p4 = Park.create!(name: 'Mass Audubon Wildlife Sanctuaries', city: 'Mattapan', state: 'MA', region: 'eastern', dogs: false, hikes: 4)

puts "Created four parks"

t1 = p1.trails.create!(name: 'Skyline Trail', length: 7, diffculty: 'Hard')
t2 = p1.trails.create!(name: 'Cross Fells trail', length: 4.5, diffculty: 'Easy')
t3 = p1.trails.create!(name: 'Bear Hill Trail', length: 0.2, diffculty: 'Easy')
t4 = p1.trails.create!(name: 'Rock Circuit Trail', length: 3.7, diffculty: 'Medium')
t5 = p2.trails.create!(name: 'Chickatawbut', length: 3.2 , diffculty: 'Medium')
t6 = p3.trails.create!(name: 'Slide Notch Path', length: 2,  diffculty: 'Hard')
t7 = p3.trails.create!(name: 'Dark Hollow', length: 9,  diffculty: 'Hard')
t8 = p3.trails.create!(name: 'Hancock Hill', length: 3, diffculty: 'Easy')
t9 = p3.trails.create!(name: 'Old Concord Road', length: 4,  diffculty: 'Easy')
t10 = p4.trails.create!(name: 'Witches\' Cove Trail', length: 0.5,  diffculty: 'Medium')
t11 = p4.trails.create!(name: 'Desert Loop', length: 4,  diffculty: 'Medium')
t12 = p4.trails.create!(name: 'Pine Trail', length: 2, diffculty: 'Hard')

puts "Created many trails"

laura = User.create!(email: 'laura@email.com', password: 'password', password_confirmation: 'password', first_name: 'Laura', last_name: 'Pond', admin: false)
sawyer = User.create!(email:'sawyer@email.com', password: 'password', password_confirmation: 'password', first_name: 'Sawyer', last_name: 'Dog', admin: false)
sean = User.create!(email: 'sean@email.com', password: 'password', password_confirmation: 'password', first_name: 'Sean', last_name: 'Gilpatrick', admin: false)
bob = User.create!(email: 'bob@email.com', password: 'password', password_confirmation: 'password', first_name: 'Bob', last_name: 'Sagat', admin: true)

puts "Created a few users"


t1.reviews.create!(content: 'Beautiful hiking, my dog loved it! Too bad we couldn\'t go into the water', user: laura)
t2.reviews.create!(content: 'A bit too crowed for me', user: sawyer)
t3.reviews.create!(content: 'Our absolute favorite place to explore. Never get tired of it.', user: sean)
t4.reviews.create!(content: 'Too bad my dog couldn\'t come, he would love to chase the ducks.', user: bob)

puts "Created a few reviews"

