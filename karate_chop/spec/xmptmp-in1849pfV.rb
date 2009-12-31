require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Karate_chop do
  before(:all) do
    kc = Karate_chop.
  it "will return -1 for empty array" do
    kc = Karate_chop.new
    kc.chop(3,[]).should == -1
  end
end
