require "pry"
class Artist

  @@all = []

attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def add_song(song)
  #binding.pry
  @songs << song
  song.artist = self
end

def self.all
  @@all
end


def self.song_count
  all_songs = 0
    #binding.pry
  Artist.all.each do |artist|
    all_songs += artist.songs.length
  end

  all_songs
end

def add_song_by_name(name)
  song = Song.new(name)
  #binding.pry
  @songs << song
  song.artist = self
  return song
end

end
