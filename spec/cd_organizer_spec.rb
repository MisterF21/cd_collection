require 'rspec'
require './lib/cd_organizer'
require './lib/album'

describe 'CompactDisc' do

  before do
    CompactDisc.clear
  end

  describe 'initialize' do
    it 'initializes an object of CD with an artist name and album name' do
    test_compactdisc = CompactDisc.new('Jay', 'Black Album')
    test_compactdisc.should be_an_instance_of CompactDisc
    end
  end

  describe '.all' do
    it 'creates an array to hold one Compact Disc' do
      test_compactdisc = CompactDisc.new('Jay', 'Black Album')
      CompactDisc.all.should eq [test_compactdisc]
    end
    it 'creates an array to hold all Compact Discs' do
      test_compactdisc = CompactDisc.new('Jay', 'Black Album')
      test_compactdisc2 = CompactDisc.new('Beatles', 'White Album')
      test_compactdisc3 = CompactDisc.new('Weezer', 'Blue Album')
      CompactDisc.all.should eq [test_compactdisc, test_compactdisc2, test_compactdisc3]
    end
  end

  describe '.search_artist' do
    it 'searches through the Compact Disc array using input and returns artist and album' do
      test_othercd = CompactDisc.new('Man o War', 'Man o War')
      test_compactdisc = CompactDisc.new('Beatles', 'White Album')
      CompactDisc.search_artist('Beatles').should eq test_compactdisc
    end
  end

  describe '.search_album' do
    it 'searches through the Compact Disc array using input and returns artist album' do
      test_othercd = CompactDisc.new('Man o War', 'Man o War')
      test_compactdisc = CompactDisc.new('Beatles', 'White Album')
      CompactDisc.search_album('White Album').should eq test_compactdisc
    end
  end
end

describe 'Album' do
  describe 'initialize' do
    it 'initializes a new instance of Album' do
      test_album = Album.new('Red Album')
      test_album.should be_an_instance_of Album
    end
  end
end

