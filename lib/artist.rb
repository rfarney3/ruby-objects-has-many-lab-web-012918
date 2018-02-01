require "pry"

class Artist
  @@song_count = 0
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    @@song_count += 1
    new_song.artist = self
  end

  def self.song_count
    @@song_count
  end

end
