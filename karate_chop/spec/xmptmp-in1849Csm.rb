require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require "."
describe Karate_chop do
  it "will return -1 for empty array" do
    Karate_chop.chop(3,[]).should == -1
  end
end
