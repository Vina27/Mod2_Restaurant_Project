# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Restaurant.destroy_all 
Review.destroy_all 

may = User.create(user_name:"may", password:"may")
ssgrill = Restaurant.create(name: "Shobu Sushi & Grill", street_address: "9427 5th Ave", city: "Brooklyn", state: "NY", zip_code:11209, category: "Japanese, Sushi Bar")
Review.create(restaurant_id: ssgrill.id, user_id: may.id, content: "Delicous sushi rolls", title: "Excellent Meal")

ssgrill = Restaurant.create(name: "Shobu Sushi & Grill", street_address: "9427 5th Ave", city: "Brooklyn", state: "NY", zip_code:11209, category: "Japanese, Sushi Bar")
chip = Restaurant.create(name: "Chipolte Mexican Grill", street_address: "463 86th St", city: "Brooklyn", state: "NY", zip_code:11209, category: "Mexican")
ichi = Restaurant.create(name: "IchiUmi", street_address: "6 E 32nd St", city: "New York", state: "NY", zip_code:10016, category: "Japanese Buffet")
lb = Restaurant.create(name: "L&B Spumoni Garden", street_address: "2725 86th St", city: "Brooklyn", state: "NY", zip_code:11223, category: "Italian")
counter = Restaurant.create(name: "The Counter", street_address: "7 Times Square", city: "New York", state: "NY", zip_code:10036, category: "American, Burgers")
katz = Restaurant.create(name: "Katz's Delicatessen", street_address: "205 E Houston St", city: "New York", state: "NY", zip_code:10002, category: "Deli, Sandwiches")



