require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Karate do
  before(:all) do
    Kc = Karate.new()
  end

  it "will return -1 for an empty array" do
    Kc.chop(3,[]).should == -1
  end

  it "will return -1 for an array element not found" do
    Kc.chop(3,[1]).should == -1
  end

  it "will return 0 for 1 in [1]" do
    Kc.chop(1,[1]).should == 0
  end

  it "will return 0 for 1 in [1,3,5]" do
    Kc.chop(1,[1,3,5]).should == 0
  end

  it "will return 1 for 3 in [1,3,5]" do
    Kc.
  end
end
