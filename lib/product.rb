class Product
  attr_accessor :price, :stock

  def initialize(params)
    @price = params[:price]
    @stock = params[:stock]
  end

  def to_s
    "#{@price} руб. (осталось #{@stock})"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @stock = params[:stock] if params[:stock]
  end
end