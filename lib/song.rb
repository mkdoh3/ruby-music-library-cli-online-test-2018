class Song
  attr_accessor :name
  @@all = []

  #   def initialize(name)
  #     @name = name
  #   end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create
    self.new.tap(&:save)
  end
end
