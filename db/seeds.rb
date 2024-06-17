CSV.foreach(Rails.root.join('db', 'products.csv'), headers: true) do |row|
  category = Category.find_or_create_by(name: row['category'])
  category.products.create(
    title: row['title'],
    description: row['description'],
    price: row['price'],
    stock_quantity: row['stock_quantity']
  )
end
