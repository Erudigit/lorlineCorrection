# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


nb_user = 20
nb_events = 10
nb_guests = 20


5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    description: Faker::Lorem.paragraphs(number: 1),
    password: "123456"
  )
end 
#for the random startdate
t1 = Time.parse("2019-11-01 14:40:34")
t2 = Time.parse("2022-01-01 00:00:00")

nb_events.times do |x|
  Event.create(
    start_date: rand(t1..t2),
    duration: rand(5..100)*5,
    description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    location: Faker::Address.city,
    price: rand(1..1000),
    title: Faker::Book.title,
    admin_id: User.all.sample.id)
  puts "Seeding of Event nb #{x}"
end

nb_guests.times do |x|
  Attendance.create(
    user_id: User.all.sample.id,
    event_id: Event.all.sample.id)
  puts "Seeding of Guest nb #{x}"
end












