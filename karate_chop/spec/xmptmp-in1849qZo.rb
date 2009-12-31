require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Karate do
  before(:all) do
    kc = Karate.
  end

  it "will return -1 for empty array" do
    kc = Karate.new()
    kc.chop(2,[]).should == -1
  end

end
