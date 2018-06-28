class Post

  @@all = []

  attr_accessor :author
  attr_accessor :title

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      self.author.name
    end
  end

end
