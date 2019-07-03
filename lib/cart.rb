class Cart
  attr_reader :products

  def initialize
    @products = []
  end

  def add_to_cart(product)
    @products << product
  end

  def to_s
    @products.join("\n")
  end
end