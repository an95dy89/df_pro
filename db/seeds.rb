# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  strat_at = Random.rand(10).days.ago + 5.days
   Event.create!(supplier_name: Faker::Name.name, date:strat_at)
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


10.times do |i|
 User.create(email:"usuario#{i}@gmail.com", password:'123456')
end
