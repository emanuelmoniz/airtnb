require 'faker'

User.destroy_all
Toilet.destroy_all
Booking.destroy_all
# Review.destroy_all

users = []
toilets = []
bookings = []
toilet_placeholder_url = "https://res.cloudinary.com/bubs/image/upload/v1551224698/toilet_placeholder.png"
avatar_placeholder_url = "https://res.cloudinary.com/bubs/image/upload/v1551224698/avatar_placeholder.png"
i = 0
#create users
6.times do
  user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , email: "email#{i}@gmail.com", password: "123456")
  user.remote_photo_url = avatar_placeholder_url
  user.save
  users << user
  i += 1
  puts user
end

users = User.all
i = 0
#some users own toilets
3.times do
  toilet = Toilet.new(name: Faker::Lorem.word, description: Faker::Lorem.sentence(3), address: Faker::Address.full_address, available: Faker::Boolean.boolean)
  toilet.user = users[i]
  toilet.remote_photo_url = toilet_placeholder_url
  toilet.save
  toilets << toilet
  i += 1
  puts toilet
end

toilets = Toilet.all
i = 0
#some users book toilets
3.times do
  booking = Booking.new()
  booking.user = users[3 + i]
  booking.toilet = toilets[i]
  booking.save
  bookings << booking
  i += 1
  puts booking
end

# #some users add reviewa
# 4.times do
#   review = Review.new(content: Faker::Vehicle.standard_specs)
#   review.booking = bookings.sample
#   review.save
# end
