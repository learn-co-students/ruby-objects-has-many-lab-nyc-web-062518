class Post

  @@all = []

  attr_reader :title
  attr_accessor :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      @author.name
    else
      nil
    end
  end

end
