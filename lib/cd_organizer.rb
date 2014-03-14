class CompactDisc
  attr_reader :album_name, :album, :artist_name, :all, :album_names, :@artist_multiple_album
  @@all = []

  def initialize(artist_name, album_name)
    @artist_name = artist_name
    @album_name = album_name
    @artist_multiple_album = []
    @album_names = []
    @album_names << Album.new(album)
    @@all << self
  end

  def CompactDisc.create(artist_name, album_names)
    test_compactdisc = CompactDisc.new(artist_name, album_names)
    @@all << test_compactdisc
    test_compactdisc
  end

  def CompactDisc.clear
    @@all = []
  end

  def CompactDisc.all
    @@all
  end

  def CompactDisc.search_artist(input)
    CompactDisc.all.each do |obj|
      if obj.artist_name == input

      end
    end
  end

  def CompactDisc.search_album(input)
    CompactDisc.all.each do |obj|
      if obj.album_name == input
      end
      return obj
     end
  end
end
