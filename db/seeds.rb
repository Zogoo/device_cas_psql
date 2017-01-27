# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! do |u|
  u.email = 'user@test.com'
  u.password = 'user123'
  u.password_confirmation = 'user123'
end
user.confirm!
puts 'New user created!'
puts 'Email   : ' << user.email
puts 'Password: ' << user.password

admin = Admin.create! do |u|
  u.email = 'admin@test.com'
  u.password = 'admin123'
  u.password_confirmation = 'admin123'
end
#admin.confirm!
puts 'New admin created!'
puts 'Email   : ' << admin.email
puts 'Password: ' << admin.password
