require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disc'
require_relative 'lib/cart'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')
cart = Cart.new

total_price = 0
user_input = nil

while user_input != 0 do
  puts "Что хотите купить:"
  puts collection
  puts "0. Выход"
  puts
  user_input = STDIN.gets.to_i
  product = collection.products[user_input - 1]
  if user_input > 0
    if product.stock == 0
      puts "Данного товара нет в наличии, выберите что-то другое"
      next
    end
    product.stock -= 1
    puts "Вы выбрали #{product}"
    cart.add_to_cart(product)
    total_price += product.price
  else
    puts "Вы купили:"
    puts cart
    puts "С вас #{total_price} руб. Спасибо за покупки!"
  end
end
