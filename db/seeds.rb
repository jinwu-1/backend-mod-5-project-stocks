# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "asdf", password: "asdf", first_name: "Mc", last_name: "Donalds", cash: "1000")
user2 = User.create(username: "qwerty", password: "asdf", first_name: "Burger", last_name: "King", cash: "1000")

portfolio1 = Portfolio.create(description: "Tech Stocks", user_id: user1.id)
portfolio2 = Portfolio.create(description: "Random Stocks", user_id: user2.id)

stock1 = Stock.create(symbol: "AAPL", name: "Apple Inc.", price: "241.41", exchange: "Nasdaq Global Select", portfolio_id: portfolio1.id)
stock2 = Stock.create(symbol: "MSFT", name: "Microsoft Corporation", price: "153.83", exchange: "Nasdaq Global Select", portfolio_id: portfolio1.id)
stock3 = Stock.create(symbol: "SNAP", name: "Snap Inc. Class A", price: "11.475", exchange: "New York Stock Exchange", portfolio_id: portfolio2.id)
stock4 = Stock.create(symbol: "WFC", name: "Wells Fargo & Company", price: "27.83", exchange: "New York Stock Exchange", portfolio_id: portfolio2.id)
stock5 = Stock.create(symbol: "NKE", name: "Nike Inc.", price: "82.62", exchange: "New York Stock Exchange", portfolio_id: portfolio2.id)

puts "Done"