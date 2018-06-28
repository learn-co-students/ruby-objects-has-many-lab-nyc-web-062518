class Artist

  @@all = []

  attr_accessor :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    count = 0
    @@all.each { |artist| count += artist.songs.length }
    count
  end

end
