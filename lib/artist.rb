class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    self.new(name).tap(&:save)
  end

  def add_song(song)
    song.artist ||= self
    self.songs << song unless songs.include?(song)
  end
end
