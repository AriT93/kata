require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe BloomFilter do
  before (:all) do
    BF = BloomFilter.new(1000000,4,"data/wordlist.txt")
  end

  it "should fail search for dribble" do
    BF.search("dribble").should == false
  end

  it "should succedd search for driving" do
    BF.search("driving").should == true
  end
end
