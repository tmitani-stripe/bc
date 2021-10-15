puts 'Cleaning database...'
ProductsOrder.delete_all
Order.destroy_all
Product.destroy_all
Category.destroy_all

puts 'Creating categories...'
shoes = Category.create!(name: 'shoes')
clothes = Category.create!(name: 'clothes')

puts 'Creating products...'
Product.create!(price: 5000, sku: 'sweater', name: 'セーター', category: clothes, photo_url: 'https://images.pexels.com/photos/5464589/pexels-photo-5464589.jpeg?cs=srgb&dl=pexels-taryn-elliott-5464589.jpg&fm=jpg')
Product.create!(price: 20000, sku: 'jeans', name: 'ジーンズ', category: clothes, photo_url: 'https://images.pexels.com/photos/1346187/pexels-photo-1346187.jpeg?cs=srgb&dl=pexels-godisable-jacob-1346187.jpg&fm=jpg')
Product.create!(price: 12000, sku: 'sneaker',   name: 'スニーカー', category: shoes, photo_url: 'https://images.pexels.com/photos/3987290/pexels-photo-3987290.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
puts 'Finished!'