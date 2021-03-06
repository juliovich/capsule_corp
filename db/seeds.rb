require 'faker'

Booking.destroy_all
Robot.destroy_all
User.destroy_all

puts "Creating one User!"
5.times do
  user = User.create!(
    email:    Faker::Internet.email,
    password: Faker::Internet.password(8),
    owner: true
  )
  5.times do
    robot = Robot.create!(
      functions: Faker::Hobbit.thorins_company,
      caracteristics: Faker::Internet.slug,
      price: (1000..10000).to_a.sample,
      user: user,
      name: Faker::Name.name
    )
  end
end
puts 'Robots & Users Finished!'

10.times do
  user = User.create!(
    email:    Faker::Internet.email,
    password: Faker::Internet.password(8),
    owner: false
  )
  book_rand= rand(0..7)
  book_rand.times do
    booking = Booking.create!(
      beginning_of_rental: Faker::Date.backward(33),
      end_of_rental: Faker::Date.forward(23),
      user: user,
      robot: Robot.all.to_a.sample
    )
  end
end
