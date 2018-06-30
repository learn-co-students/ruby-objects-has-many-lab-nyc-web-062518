class Author

  attr_accessor :name, :post

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    #post is instance of Post
    #adds post to post
    #self here is the author instance
    #adele.add_post(post) should add post to @posts
    post.author = self
    @posts << post
    @@all << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    self.all.count
  end

end
