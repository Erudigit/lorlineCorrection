# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


100.times do |x|
  User.create(
      email: Faker::Name.first_name+'@yopmail.com',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      description: "moi moi moi moi")
  puts "Seeding of User nb #{x}"
end

# #for the random startdate
# t1 = Time.parse("2019-11-01 14:40:34")
# t2 = Time.parse("2022-01-01 00:00:00")

50.times do |x|
  Event.create(
    duration: rand(5..100),
    description: "bla bla bla bla",
    location: Faker::Address.city,
    price: rand(1..1000),
    title: Faker::Book.title )
  puts "Seeding of Event nb #{x}"
end

# nb_guests.times do |x|
#   Attendance.create(
#     user_id: User.all.sample.id,
#     event_id: Event.all.sample.id)
#   puts "Seeding of Guest nb #{x}"
# end












