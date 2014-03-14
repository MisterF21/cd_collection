class Album
  def initialize(album)
    @album = album
  end

  def create(album)
    test_album = Album.new(album)
    @@all << test_album
    test_album
  end
end
