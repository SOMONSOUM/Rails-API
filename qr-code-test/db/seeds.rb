# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([{
  name: "Meiji",
  upc: "8888470012004"
}])

Product.create([{
  name: "Meiji-2",
  upc: "123123123"
}])

2.times do
  Qrcode.create({
    qr: Faker::String.random([0, 6]),
    product_id: 1
    })
end
