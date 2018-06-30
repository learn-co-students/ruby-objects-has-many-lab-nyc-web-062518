require "pry"

class Artist

  @@artists = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    @songs << new_song
    return new_song
  end

  def self.song_count
    all_songs = 0
    @@artists.each do |artist|
      all_songs += artist.songs.length
    end
    all_songs
  end

  def self.artists
    @@artists
  end

end
