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
tom = User.create(user_name: "tom", password:"tom")
kate = User.create(user_name: "kate", password:"kate")

#ssgrill = Restaurant.create(name: "Shobu Sushi & Grill", street_address: "9427 5th Ave", city: "Brooklyn", state: "NY", zip_code:11209, category: "Japanese, Sushi Bar")
#Review.create(user_id: may.id, restaurant_id: ssgrill.id, content: "Delicious sushi rolls", title: "Excellent Meal")

ssgrill = Restaurant.create(name: "Shobu Sushi & Grill", street_address: "9427 5th Ave", city: "Brooklyn", state: "NY", zip_code:11209, category: "Japanese, Sushi Bar")
chip = Restaurant.create(name: "Chipolte Mexican Grill", street_address: "463 86th St", city: "Brooklyn", state: "NY", zip_code:11209, category: "Mexican")
ichi = Restaurant.create(name: "IchiUmi", street_address: "6 E 32nd St", city: "New York", state: "NY", zip_code:10016, category: "Japanese Buffet")
lb = Restaurant.create(name: "L&B Spumoni Garden", street_address: "2725 86th St", city: "Brooklyn", state: "NY", zip_code:11223, category: "Italian")
counter = Restaurant.create(name: "The Counter", street_address: "7 Times Square", city: "New York", state: "NY", zip_code:10036, category: "American, Burgers")
katz = Restaurant.create(name: "Katz's Delicatessen", street_address: "205 E Houston St", city: "New York", state: "NY", zip_code:10002, category: "Deli, Sandwiches")


Review.create(user_id: may.id, restaurant_id: ssgrill.id, content: "The sushi is always fresh and delicious here!", title: "Excellent Food")
Review.create(user_id: tom.id, restaurant_id: ssgrill.id, content: "The sushi is always fresh!", title: "Love")
Review.create(user_id: kate.id, restaurant_id: ssgrill.id, content: "Love their Sushi!", title: "Amazing Food")
Review.create(user_id: tom.id, restaurant_id: chip.id, content: "Food is always tasty!", title: "Super Fresh")
Review.create(user_id: may.id, restaurant_id: chip.id, content: "Food is always fresh and tasty!", title: "My Go To")
Review.create(user_id: kate.id, restaurant_id: ichi.id, content: "Every kind of sushi here!", title: "OMG")
Review.create(user_id: may.id, restaurant_id: ichi.id, content: "Huge variety of fresh sushi!", title: "Best Sushi Buffet")
Review.create(user_id: may.id, restaurant_id: lb.id, content: "Must try the Gramdma Pizza!", title: "Best Pizza")
Review.create(user_id: tom.id, restaurant_id: lb.id, content: "Best Pizza in town!", title: "Must Try")
Review.create(user_id: kate.id, restaurant_id: lb.id, content: "Must try the Gramdma Pizza!", title: "Best Pizza")
Review.create(user_id: may.id, restaurant_id: counter.id, content: "Create your own delicious burger!", title: "So Tasty")
Review.create(user_id: kate.id, restaurant_id: counter.id, content: "Freshest made to order burgers!", title: "Awesome")
Review.create(user_id: tom.id, restaurant_id: counter.id, content: "If you love burgers you gotta try this place!", title: "Yummy")
Review.create(user_id: may.id, restaurant_id: katz.id, content: "The pastrami is to die for!", title: "Iconic Deli")
Review.create(user_id: tom.id, restaurant_id: katz.id, content: "I always order the Pastrami Sandwich!", title: "Nothing Like It")
Review.create(user_id: kate.id, restaurant_id: katz.id, content: "All I can say is try the pastrami!", title: "Best in NYC")