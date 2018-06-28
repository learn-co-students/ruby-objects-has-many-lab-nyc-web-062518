class Post

attr_accessor :title
attr_accessor :author
@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def author_name
  if @author
    @author.name
  else
    nil
  end
end


end
