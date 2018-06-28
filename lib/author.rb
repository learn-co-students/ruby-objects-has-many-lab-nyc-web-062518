class Author

@@all = []
attr_accessor :name, :posts

def initialize(name)
  @name = name
  @posts = []
  @@all << self
end

def self.all
  @@all
end

def add_post(title)
  #binding.pry
  @posts << title
  title.author = self
end

def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
  @posts << post
  return post
end

def self.post_count
  total_posts = 0
  self.all.each do |author|
    #binding.pry
    total_posts += author.posts.length
  end
  total_posts
end

end
