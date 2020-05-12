# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#User.create!(
#  email: "#{Faker::Name.first_name}@yopmail.com",
#  first_name: Faker::Name.first_name,
#  last_name: Faker::Name.last_name,
#  description: Faker::Lorem.paragraph)
#end

User.destroy_all
Event.destroy_all
Attendance.destroy_all

users = []
events = []

10.times do |i|
  users << User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(domain: 'yopmail'),
    description: Faker::Lorem.paragraphs,
    encrypted_password: 'test'#Faker::Internet.password
  )
  puts "10 new users created!"
end