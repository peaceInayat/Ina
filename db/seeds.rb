# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:'imtiyaz@ina.com', password: '12345678', password_confirmation: '12345678')

Category.create(name: "Sale Deed" )
Category.create(name: "Sale Aggrement" )
Category.create(name: "Rent Aggrement" )
Category.create(name: "Will Deed" )
Category.create(name: "EC" )
Category.create(name: "Title Verification" )
Category.create(name: "Market Value" )
