class Song

@@all = []
attr_accessor :name
attr_accessor :artist

def initialize(name)
  @name = name
  @@all << self
end

def artist_name
  if self.artist
    @artist.name
  else
    nil
  end
end


end
