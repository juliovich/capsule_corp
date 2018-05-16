# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Robot.destroy_all
User.destroy_all

puts 'Creating 10 fake users...'
10.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: Faker::Internet.password(8),
    owner: true
  )
  user.save!
  puts 'Creating 10 fake robots...'
  10.times do
    robot = Robot.new(
      functions: Faker::Hobbit.thorins_company,
      caracteristics: Faker::Internet.slug,
      price: (1000..10000).to_a.sample,
      user: user,
<<<<<<< HEAD
      name: "#{Faker::Hipster.words.first}##{rand(1..1000)}"
=======
      name: Faker::Hipster.word
>>>>>>> 8398cdf7c3cba36d60a2a4384b32f23c8eecb106
    )
    robot.save!
  end
  puts 'Finished!'
end
puts 'Finished!'
<<<<<<< HEAD

=======
>>>>>>> 8398cdf7c3cba36d60a2a4384b32f23c8eecb106
