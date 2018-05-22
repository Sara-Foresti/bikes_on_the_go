# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  arthur = User.create!(email: "arthur@lewagon.com", password: "123456", first_name: "Arthur", last_name: "Littman")
  Bike.create!(
    name: 'Kids Mountain Bike in Good Condition',
    description: 'Hi I have kids mountain bike in good working order 20 inch wheels Good tyres, gears and brakes Recently checked and serviced As you can see from the pictures the bike is in good condition',
    size: 'kids - 10 years old',
    price: 40,
    address: '138 Kingsland Rd, London',
    user: arthur
  )


