# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Robot.destroy_all

robots_attributes = [
 {
   functions: "Home care",
   caracteristics: "T1000",
   price: "80000",
   user_id: 2,
   name: "Bender"
 },
 {
   functions: "Security",
   caracteristics: "T 800",
   price: "10000",
   user_id: 2,
   name: "Astro"
 }
]
robots_attributes.each do |robot_attributes|
 puts "Creating robot..."
 robot = Robot.create!(robot_attributes)
end
