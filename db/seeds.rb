require 'faker'

User.destroy_all
Toilet.destroy_all
Booking.destroy_all
Review.destroy_all

users = []
toilets = []
bookings = []

#create users
8.times do
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , email: Faker::Internet.email, password: Faker::Internet.password(6))
  user.save
  users << user
end

#some users own toilets
5.times do
  toilet = Toilet.new(name: Faker::Lorem.word, description: Faker::Lorem.sentence(3), address: Faker::Address.full_address, available: Faker::Boolean.boolean)
  toilet.user = users.sample
  toilet.save
  toilets << toilet
end

#some users book toilets
4.times do
  booking = Booking.new(user_id: "#{users.sample}", toilet_id: "#{toilets.sample}")
  booking.user = users.sample
  booking.toilet = toilets.sample
  booking.save
  bookings << booking
end

#some users add reviewa
4.times do
  review = Review.new(content: Faker::Vehicle.standard_specs)
  review.booking = bookings.sample
  review.save
end
