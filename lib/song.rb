class Song

  @@all = []

  attr_accessor :artist
  attr_accessor :name

  def initialize(name)
    self.name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end

end
