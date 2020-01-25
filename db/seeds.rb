# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


Booking.destroy_all
Pleureuse.destroy_all
User.destroy_all

#emma_user = User.new(email: "fouclt.emma@gmail.com", password: "blabla", first_name: "FOucault", last_name: "Emma", phone_number: "09876", birthday: "2020-01-14")
#emma_user.save!

#paula_user = User.new(email: "beltran.paula@gmail.com", password: "blabla", first_name: "Paula", last_name: "Beltran", phone_number: "098765876", birthday: "2020-01-14")
#paula_user.save!

#puts "tous les users sont crees"

#emma = Pleureuse.new(pseudo: "Emma Fclt", city: "Paris", gender: "F", price: 300, user: emma_user)
#puts "emma pleureuse"
#emma.save!
#paula = Pleureuse.new(pseudo: "Pau Beltran", city: "Paris", gender: "F", price: 400, user: paula_user)
#paula.save!
pictures = ["https://images.unsplash.com/photo-1573516515928-92444ec46ce2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1555&q=80","https://images.unsplash.com/photo-1566677379359-5ef1321fcb7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80","https://images.unsplash.com/photo-1551823934-61391394a6ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1993&q=80","https://images.unsplash.com/photo-1545792583-533185490f52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=958&q=80","https://images.unsplash.com/photo-1567659893051-0b046978d0f0?ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80", "https://images.unsplash.com/photo-1533392151650-269f96231f65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80","https://images.unsplash.com/photo-1546189827-c4cd7d1cc07d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80","https://images.unsplash.com/photo-1551823934-3d82b4d2fd1d?ixlib=rb-1.2.1&auto=format&fit=crop&w=2010&q=80","https://images.unsplash.com/photo-1559782010-0d605c1ee09d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80","https://images.unsplash.com/photo-1559782153-f28786b4940d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80","https://images.unsplash.com/photo-1556337137-c7de215dfa78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80","https://images.unsplash.com/photo-1559781564-b5a5ba6a495f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80","https://images.unsplash.com/photo-1559781726-b7c7e77515ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80","https://images.unsplash.com/photo-1555438987-8267a219d1f0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80","https://images.unsplash.com/photo-1559017895-ca553c995892?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80","https://images.unsplash.com/photo-1483135504826-f60ad6c7924e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80","https://images.unsplash.com/photo-1502208391170-1a420ac9cf57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=355&q=80","https://images.unsplash.com/photo-1511608170515-b4557034155c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80","https://images.unsplash.com/photo-1474901879171-d6f34b3a99b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80","https://images.unsplash.com/photo-1527236438218-d82077ae1f85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80","https://images.unsplash.com/photo-1521849960527-40b1be1fc7d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80","https://images.unsplash.com/photo-1488631868091-25e5307e8f14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=751&q=80"]


20.times do |index|
  file = URI.open(pictures[index])
  p file
  a = User.new(
    email:Faker::Internet.email,
    password:"123456",
    first_name:Faker::Name.first_name(),
    last_name:Faker::Name.last_name(),
    phone_number:("23212312"),
    birthday:"2000-01-14"
    )
  a.photo.attach(io: file, filename: "nes-#{index}.png", content_type: 'image/png')

  a.save!

  b = Pleureuse.new(pseudo:Faker::Name.first_name(), gender:["Male","Female"].sample(1).join, city:["Nantes","Paris","Marseille","Rennes","Nancy"].sample(1).join, description:Faker::GreekPhilosophers.quote,price:rand(10..100),language:(["Italian","German","French","Spanish"].sample(1).join),user_id: a.id, picture: pictures[index])

  b.save!
end


