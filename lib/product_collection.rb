class ProductCollection
  attr_reader :products

  PRODUCT_TYPES = {
    film: {dir: 'films', class: Film},
    book: {dir: 'books', class: Book},
    disc: {dir: 'discs', class: Disc}
  }

  def initialize(products = [])
    @products = products
  end

  def self.from_dir(file)
    products = []

    PRODUCT_TYPES.each do |type, hash|
      product_dir = hash[:dir]
      product_class = hash[:class]

      Dir[file + '/' + product_dir + '/*.txt'].each do |path|
        products << product_class.from_file(path)
      end
    end

    new(products)
  end

  def sort!(params)
    case params[:by]
    when :title
      @products.sort_by! { |product| product.to_s }
    when :price
      @products.sort_by! { |product| product.price }
    when :stock
      @products.sort_by! { |product| product.stock }
    end

    @products.reverse! if params[:order] == :asc

    self
  end

  def to_s
    @products.map.with_index(1) { |product, index| "#{index}. #{product}" }.join("\n")
  end
end