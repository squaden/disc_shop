class Film < Product
  attr_accessor :title, :year, :director

  def self.from_file(file)
    content = File.readlines(file).map { |item| item.chomp }

    new(
      title: content[0],
      director: content[1],
      year: content[2].to_i,
      price: content[3].to_i,
      stock: content[4].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм #{@title}, #{@year}, реж. #{@director}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
end