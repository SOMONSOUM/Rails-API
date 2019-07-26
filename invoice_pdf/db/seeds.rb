# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

line_items = LineItem.create([
  {
    description: "Tuts+ Subscription January 2019",
    price: 15.0
  },
  {
    description: "Ruby eBook",
    price: 9.90
  }
  ])
Invoice.create(
  client: 'Pedro Alonso',
  total: 24.90,
  line_items: line_items,
  date: Date.new(2016, 4, 1)
)
