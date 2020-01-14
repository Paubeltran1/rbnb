# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pleureuse.destroy_all
User.destroy_all

emma_user = User.new(email: "fouclt.emma@gmail.com", password: "blabla", first_name: "FOucault", last_name: "Emma", phone_number: "09876", birthday: "2020-01-14")
emma_user.save!

paula_user = User.new(email: "beltran.paula@gmail.com", password: "blabla", first_name: "Paula", last_name: "Beltran", phone_number: "098765876", birthday: "2020-01-14")
paula_user.save!

puts "tous les users sont crees"

emma = Pleureuse.new(pseudo: "Emma Fclt", city: "Paris", gender: "F", price: 300, user: emma_user)
puts "emma pleureuse"
emma.save!
paula = Pleureuse.new(pseudo: "Pau Beltran", city: "Paris", gender: "F", price: 400, user: paula_user)
paula.save!
