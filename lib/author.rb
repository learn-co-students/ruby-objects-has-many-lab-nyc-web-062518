class Author

  @@authors = []

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
    return new_post
  end

  def self.post_count
    all_posts = 0
    @@authors.each do |author|
      all_posts += author.posts.length
    end
    all_posts
  end

end
