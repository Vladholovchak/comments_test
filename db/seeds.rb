# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shop.create(name:"Apple store")
Shop.create(name:"Allo")
User.create(email: "test@gmail.com", password:"AERT124")
User.create(email: "vova@gmail.com", password:"AERT123")
Firm.create(name:"Mailsoft")
Firm.create(name:"LeeCo")
Taxi.create(car:"Brb235")
Taxi.create(car:"Mg2355")