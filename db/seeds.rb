Review.delete_all
Trail.delete_all
Park.delete_all
User.delete_all

p1 = Park.create!(name:'Middlesex Fells Reservation', city: 'Boston', state: 'MA', region: 'northeast', dogs: true, hikes: 5)
p2 = Park.create!(name: 'Blue Hills Reservation', city: 'Milton', state: 'MA', region: 'eastern', dogs: true, hikes: 10)
p3 = Park.create!(name: 'Memorial Forest', city: 'Sudbury', state: 'MA', region: 'central', dogs: true, hikes: 3)
p4 = Park.create!(name: 'Mass Audubon Wildlife Sanctuaries', city: 'Mattapan', state: 'MA', region: 'eastern', dogs: false, hikes: 4)

puts "Created four parks"

t1 = p1.trails.create!(name: 'Skyline Trail', length: 7, difficulty: 'Hard')
t2 = p1.trails.create!(name: 'Cross Fells trail', length: 4.5, difficulty: 'Easy')
t3 = p1.trails.create!(name: 'Bear Hill Trail', length: 0.2, difficulty: 'Easy')
t4 = p1.trails.create!(name: 'Rock Circuit Trail', length: 3.7, difficulty: 'Medium')
t5 = p2.trails.create!(name: 'Chickatawbut', length: 3.2 , difficulty: 'Medium')
t6 = p3.trails.create!(name: 'Slide Notch Path', length: 2,  difficulty: 'Hard')
t7 = p3.trails.create!(name: 'Dark Hollow', length: 9,  difficulty: 'Hard')
t8 = p3.trails.create!(name: 'Hancock Hill', length: 3, difficulty: 'Easy')
t9 = p3.trails.create!(name: 'Old Concord Road', length: 4,  difficulty: 'Easy')
t10 = p4.trails.create!(name: 'Witches\' Cove Trail', length: 0.5,  difficulty: 'Medium')
t11 = p4.trails.create!(name: 'Desert Loop', length: 4,  difficulty: 'Medium')
t12 = p4.trails.create!(name: 'Pine Trail', length: 2, difficulty: 'Hard')

puts "Created many trails"

laura = User.create!(email: 'laura@email.com', password: 'password', password_confirmation: 'password', first_name: 'Laura', last_name: 'Pond', admin: false)
sawyer = User.create!(email:'sawyer@email.com', password: 'password', password_confirmation: 'password', first_name: 'Sawyer', last_name: 'Dog', admin: false)
sean = User.create!(email: 'sean@email.com', password: 'password', password_confirmation: 'password', first_name: 'Sean', last_name: 'Gilpatrick', admin: false)
bob = User.create!(email: 'bob@email.com', password: 'password', password_confirmation: 'password', first_name: 'Bob', last_name: 'Sagat', admin: true)

puts "Created a few users"


t1.reviews.create!(rating: 5, content: 'Beautiful hiking, my dog loved it! Too bad we couldn\'t go into the water', user: laura)
t2.reviews.create!(rating: 2, content: 'A bit too crowded for me', user: sawyer)
t3.reviews.create!(rating: 4, content: 'Our absolute favorite place to explore. Never get tired of it.', user: sean)
t4.reviews.create!(rating: 3, content: 'Too bad my dog couldn\'t come, he would love to chase the ducks.', user: bob)
t5.reviews.create!(rating: 1, content: 'Great find barely 15 minutes north of the city!', user: sean)
t6.reviews.create!(rating: 2, content: 'The trail was flooded, we had to go back', user: laura)
t7.reviews.create!(rating: 3, content: 'Mud everywhere! I loved it!', user: sawyer)
t8.reviews.create!(rating: 4, content: 'This place is BEAUTIFUL!', user: bob)
t9.reviews.create!(rating: 5, content: 'It has a small pond, super cute!', user: laura)
t10.reviews.create!(rating: 1, content: 'This is by far one of the best places to hang out during summertime.', user: sean)
t11.reviews.create!(rating: 2, content: 'My kids and I love going to the habitat to get outdoors!', user: bob)
t12.reviews.create!(rating: 3, content: 'Nice laid back trail', user: bob)
t1.reviews.create!(rating: 4, content: 'Hiked the skyline trail, good view of boston from wright tower but not many views from the other hills', user: sawyer)
t2.reviews.create!(rating: 5, content: 'Very easy hiking, more of a solid nature walk to get outdoors for some fresh air without having to make a big production or any real planning.', user: sean)
t3.reviews.create!(rating: 1, content: 'the Fells are a surprisingly good place to warm up for hikes in the mountains, and a great, low-stakes place to break in your hiking boots.', user: bob)
t4.reviews.create!(rating: 2, content: 'There were some parts that are rocky and challenging, but overall, it is a fun hike.', user: sean)
t5.reviews.create!(rating: 3, content: 'Wish they had more signs directing us where to go! ', user: sean)


puts "Created a few reviews"

