# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
User.create(:email => 'user@user.com', :crypted_password => '111111', :salt => '1', :name => 'user', :screen_name => 'User1', :bio => 'Hello!!')