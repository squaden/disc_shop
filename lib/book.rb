class Book < Product
  attr_accessor :title, :genre, :author

  def self.from_file(file)
    content = File.readlines(file).map { |item| item.chomp }

    new(
      title: content[0],
      genre: content[1],
      author: content[2],
      price: content[3].to_i,
      stock: content[4].to_i
    )
  end

  def initialize(params)
  super

  @title = params[:title]
  @genre = params[:genre]
  @author = params[:author]
  end

  def to_s
   "Книга #{@title}, #{@genre}, автор #{@author}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end
end