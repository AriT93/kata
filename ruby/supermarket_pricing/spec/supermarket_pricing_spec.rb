require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe Supermarket_pricing  do
  before(:all) do
    SpFx = Supermarket_pricing.new()
  end

  it "returns 0 for a price" do
    SpFx.price("").should == 0
  end

end
