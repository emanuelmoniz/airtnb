Review.destroy_all
Booking.destroy_all
User.destroy_all
Toilet.destroy_all

user = User.new(first_name: "Rui", last_name: "Magalhães" , email: "rui.magalhaes@gmail.com", password: "123456")
user.remote_photo_url = "https://avatars2.githubusercontent.com/u/45366558?v=4"
user.save


user = User.new(first_name: "João", last_name: "Costa" , email: "joao.costa@gmail.com", password: "123456")
user.remote_photo_url = "https://avatars0.githubusercontent.com/u/46388982?v=4"
user.save


user = User.new(first_name: "Emanuel", last_name: "Moniz" , email: "emanuel.moniz@gmail.com", password: "123456")
user.remote_photo_url = "https://avatars3.githubusercontent.com/u/10147715?v=4"
user.save


user = User.new(first_name: "Romain", last_name: "Aubert" , email: "romain.aubert@gmail.com", password: "123456")
user.remote_photo_url = "https://avatars2.githubusercontent.com/u/46404814?v=4"
user.save


toilet = Toilet.new(name: "Sanita", description: "Fastástica", price: 2, address: "Rua do conde redondo 91b", available: true)
toilet.user = User.all[0]
toilet.remote_photo_url = "https://images.unsplash.com/photo-1517414628894-83d47b22f233?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"
toilet.save



