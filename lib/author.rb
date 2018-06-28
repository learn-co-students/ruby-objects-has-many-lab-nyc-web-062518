class Author

  @@all = []

  attr_accessor :name
  attr_accessor :posts

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    count = 0
    @@all.each { |author| count += author.posts.length }
    count
  end

end
