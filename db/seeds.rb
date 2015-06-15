# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Product.delete_all
Product.create! id: 1, name: "Blank Paper", price: 0.49, active: true
Product.create! id: 2, name: "Blue-Cards", price: 0.29, active: true
Product.create! id: 3, name: "Print Order", price: 1.99, active: true

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "Processing..."
OrderStatus.create! id: 2, name: "Packaging!"
OrderStatus.create! id: 3, name: "Shipped!"
OrderStatus.create! id: 4, name: "Cancelled"
