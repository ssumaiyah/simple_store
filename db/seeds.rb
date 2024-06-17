require "csv"
require 'faker'

676.times do
  Product.create(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price,
    stock_quantity: Faker::Number.number(digits: 3)
  )
end
