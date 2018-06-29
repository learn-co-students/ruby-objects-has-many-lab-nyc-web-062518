
class Artist
	@@songs = []
	attr_accessor :name, :songs

	def initialize(name)
	 	@name = name
		@songs = []
		@count = 0
	end

	def add_song(song)
		@songs << song
		@@songs << song
		song.artist = self
	end

	def add_song_by_name(songName)
		newSong = Song.new(songName)
		@songs << newSong
		@@songs << newSong
		newSong.artist = self
	end

	def self.song_count
		@@songs.length
	end

end
