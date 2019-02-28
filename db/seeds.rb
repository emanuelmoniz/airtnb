require 'faker'

Booking.destroy_all
User.destroy_all
Toilet.destroy_all
# Review.destroy_all

users = []
toilets = []
bookings = []
toilet_placeholder_url = ["https://media-cdn.tripadvisor.com/media/photo-s/01/fa/9c/43/eccentric-toilet.jpg", "http://dullkniferecords.com/wp-content/uploads/2018/05/delightful-toilet-furniture-sets-raised-toilet-seat-with-legs-and-arms-fascinating-format-funky-toilet-seats-uk.jpg", "https://www.thoughtco.com/thmb/NCWFcku0P51e5Z6603-I6jZ28W4=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/dueling-poops-59a4259f68e1a200134ae5a8.jpg", "https://imgix.ranker.com/user_node_img/50050/1000980627/original/good-ol-fashioned-nightmare-fuel-photo-u1?w=650&q=50&fm=pjpg&fit=crop&crop=faces"
"https://images-cdn.9gag.com/photo/aMbMA7M_700b.jpg", "https://www.look4ward.co.uk/wp-content/uploads/2017/01/toilets-featured.jpg"]

avatar_placeholder_url = ["https://amp.businessinsider.com/images/5899ffcf6e09a897008b5c04-750-750.jpg", "https://dcp.ufl.edu/dcp/uploads/2017/08/travis-kolbjornsen-300x300.png", "https://trendsinmenshealth.com/wp-content/uploads/sites/13/2015/07/Screen-Shot-2015-07-09-at-12.53.44.png", "https://i.pinimg.com/originals/3b/3f/2a/3b3f2afb5788fd349e70c9d5deef3841.jpg", "https://s3-media1.fl.yelpcdn.com/bphoto/CUpO9_uycCnVqYIQWDlkcQ/o.jpg", "https://i.pinimg.com/originals/ec/82/ec/ec82ece2ac38cacf38a28a7ddf4e1bec.jpg"]

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

i = 0
#some users own toilets
3.times do
  toilet = Toilet.new(name: Faker::Lorem.word, description: Faker::Lorem.sentence(3), price: 15, address: Faker::Address.city, available: true)
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

# #some users add review
# 4.times do
#   review = Review.new(content: Faker::Vehicle.standard_specs)
#   review.booking = bookings.sample
#   review.save
# end
