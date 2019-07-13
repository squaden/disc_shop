class Cart
  attr_reader :products, :total_price

  def initialize
    @products = []
    @total_price = 0
  end

  def add_to_cart(product)
    @products << product
  end

  def count_price(price)
    @total_price += price
  end

  def count_product
    @products.each_with_object(Hash.new 0) do |product, counter|
      counter[product] += 1
    end
  end

  def print_counts_product
    count_product.each do |product, count|
      puts "#{count} шт. #{product}"
    end
  end
end