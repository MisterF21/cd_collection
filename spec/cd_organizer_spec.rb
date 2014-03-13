require 'rspec'
require 'cd_organizer'

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
end
