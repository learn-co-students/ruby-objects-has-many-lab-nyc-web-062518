class Author
	@@posts = []
	attr_accessor :name, :posts

	def initialize(name)
		@name = name
		@posts = []
	end

	def add_post(post)
		@@posts << post
		@posts << post
		post.author = self
	end

	def add_post_by_title(postTitle)
		newPost = Post.new(postTitle)
		@@posts << newPost
		@posts << newPost
		newPost.author = self
	end

	def self.post_count
		@@posts.length
	end
end
