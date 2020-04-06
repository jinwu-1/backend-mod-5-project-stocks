# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "asdf", password: "asdf", first_name: "Apple", last_name: "Pie", cash: "1000")

portfolio1 = Portfolio.create(description: "Random Portfolio", user_id: user1.id)

stock1 = Stock.create(symbol: "AAPL", name: "Apple Inc.", price: "241.41", exchange: "Nasdaq Global Select", portfolio_id: portfolio1.id)
stock2 = Stock.create(symbol: "MSFT", name: "Microsoft Corporation", price: "153.83", exchange: "Nasdaq Global Select", portfolio_id: portfolio1.id)

puts "Done"