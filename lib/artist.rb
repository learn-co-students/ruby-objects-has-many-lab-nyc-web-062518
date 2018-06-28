class Artist
  attr_accessor :name
  attr_reader :songs

  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs << song
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    new_song.artist = self
    @songs << new_song
    @@all_songs << new_song
  end

  def self.song_count
    @@all_songs.size
  end

end
