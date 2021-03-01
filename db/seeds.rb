# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Test User
user = User.new(email: 'test@test.com', username: 'test', first_name: 'Test', last_name: 'User', mobile: '91919199
19', dob: (DateTime.now - 30.years), gender: 'M',password: '123456')
user.save

# create screen
screen = Screen.new(name: 'Audi1', seat_count: 50)
screen.save

# create show
show = Show.new(movie_name: "Mohabbatein", screen_id: screen.id, start_time: (DateTime.now-10.hours), end_time:
 (DateTime.now-7.hours))
show.save
show = Show.new(movie_name: "DDLJ", screen_id: screen.id, start_time: (DateTime.now-10.hours), end_time:
 (DateTime.now-7.hours))
show.save

seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)
seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)
seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)
seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)
seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)
seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)
seat = Seat.create(category: 'platinum', price: 20.00, screen_id: screen.id)

seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)
seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)
seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)
seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)
seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)
seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)
seat = Seat.create(category: 'basic', price: 10.00, screen_id: screen.id)


seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
seat = Seat.create(category: 'Execcutive', price: 50.00, screen_id: screen.id)
