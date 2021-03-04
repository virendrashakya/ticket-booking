# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Admin User
Admin.create(email: 'admin@promobi.com', password: '123456')

# Create Test User
user = User.new(email: 'test@test.com', username: 'test', first_name: 'Test', last_name: 'User', mobile: '91919199
19', dob: (DateTime.now - 30.years), gender: 'M',password: '123456')
user.save

# create screen
Screen::NAME.each do |screen_name|
    Screen.create(name: screen_name, seat_count: 40)
end

# create show
Show::TIMINGS.each do |timing|
    Show::MOVIE_NAME.each do |name|
        Screen.all.each do |screen|
            Show.create(movie_name: name, screen_id: screen.id, start_time: timing[:start_time], end_time: timing[:end_time])
        end
    end
end

Screen.all.each do |screen|
    Seat::CATEGORY.each do |category|
        30.times do
            Seat.create(category: category[:name], price: category[:price], screen_id: screen.id)
        end
    end
end