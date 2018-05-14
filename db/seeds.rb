# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create super_admin user
super_admin = User.find_or_create_by(email: 'superadmin@gmail.com') do |user|
  user.first_name = 'Super Admin'
  user.password = 'P@ssword1!'
  user.password_confirmation = 'P@ssword1!'
end

super_admin.add_role :super_admin


# Create admin user
admin = User.find_or_create_by(email: 'admin@gmail.com') do |user|
  user.first_name = 'Admin'
  user.password = 'Aa123456!'
  user.password_confirmation = 'Aa123456!'
end

admin.add_role :admin


# Create moderator user
moderator = User.find_or_create_by(email: 'moderator@gmail.com') do |user|
  user.first_name = 'Moderator'
  user.password = '12345678'
  user.password_confirmation = '12345678'
end

moderator.add_role :moderator
