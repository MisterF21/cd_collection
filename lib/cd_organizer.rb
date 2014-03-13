class CompactDisc

  @@all = []

  def initialize(artist_name, album_name)
    @artist_name = artist_name
    @album_name = album_name

    @@all << self
  end

  def CompactDisc.clear
    @@all = []
  end

  def CompactDisc.all
    @@all
  end
end
