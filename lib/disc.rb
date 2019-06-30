class Disc < Product
  attr_accessor :title, :singer, :genre, :year

  def self.from_file(file)
    content = File.readlines(file).map { |item| item.chomp }

    new(
      title: content[0],
      singer: content[1],
      genre: content[2],
      year: content[3].to_i,
      price: content[4].to_i,
      stock: content[5].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @singer = params[:singer]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "Альбом #{@singer} - #{@title}, #{@genre}, #{@year}, #{super}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @singer = params[:singer] if params[:singer]
    @genre = params[:genre] if params[:genre]
    @year = params[:year] if params[:year]
  end
end