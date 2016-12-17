# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:"Superadmin",email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin',admin: true)
User.create!(name:"user1",email: 'user1@example.com', password: '123456', password_confirmation: '123456')
User.create!(name:"user2",email: 'user2@example.com', password: '123456', password_confirmation: '123456')
User.create!(name:"user3",email: 'user3@example.com', password: '123456', password_confirmation: '123456')
User.create!(name:"user4",email: 'user4@example.com', password: '123456', password_confirmation: '123456')
Category.create!(title:"restaurant")
Category.create!(title:"cafe")
Category.create!(title:"fastfood")
Category.create!(title:"outdoor")
category=rand(1..4)
user=rand(1..5)



Organization.create!(user_id: user,title: "restaurant1",description: "otlichnoe mesto pokushat",category_id: category,active: true)
Organization.create!(user_id: user,title: "restaurant2",description: "otlichnoe mesto ",category_id: category,active: true)
Organization.create!(user_id: user,title: "restaurant3",description: "horoshoe mesto ",category_id: category,active: true)
Organization.create!(user_id: user,title: "restaurant4",description: "number one",category_id: category,active: true)
