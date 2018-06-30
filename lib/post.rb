class Post

  attr_accessor :author, :post, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end
