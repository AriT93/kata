require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

def t_chop(val, array)
  return Kc.chop_iteritive(val, array)
end
describe Karate do
  before(:all) do
    Kc = Karate.new()
  end

  it "will return -1 for an empty array" do
    t_chop(3,[]).should == -1
  end

  it "will return -1 for an array element not found" do
    t_chop(3,[1]).should == -1
  end

  it "will return 0 for 1 in [1]" do
    t_chop(1,[1]).should == 0
  end

  it "will return 0 for 1 in [1,3,5]" do
    t_chop(1,[1,3,5]).should == 0
  end

  it "will return 1 for 3 in [1,3,5]" do
    t_chop(3,[1,3,5]).should == 1
  end

  it "assert_equal(2,  chop(5, [1, 3, 5]))" do
    t_chop(5, [1, 3, 5]).should == 2
  end
  it "assert_equal(-1, chop(0, [1, 3, 5]))" do
    t_chop(0, [1, 3, 5]).should == -1
  end

  it "assert_equal(-1, chop(2, [1, 3, 5]))" do
    t_chop(2, [1, 3, 5]).should == -1
  end
  it " assert_equal(-1, chop(4, [1, 3, 5]))" do
    t_chop(4, [1, 3, 5]).should == -1
  end

  it " assert_equal(-1,chop(6, [1, 3, 5]))" do
    t_chop(6, [1, 3, 5]).should == -1
  end

  it " assert_equal(0,  chop(1, [1, 3, 5, 7]))" do
    t_chop(1, [1, 3, 5, 7]).should == 0
  end
  it " assert_equal(1,  chop(3, [1, 3, 5, 7]))" do
    t_chop(3, [1, 3, 5, 7]).should == 1
  end
  it " assert_equal(2,  chop(5, [1, 3, 5, 7]))" do
    t_chop(5, [1, 3, 5, 7]).should == 2
  end
  it " assert_equal(3,  chop(7, [1, 3, 5, 7]))" do
    t_chop(7, [1, 3, 5, 7]).should == 3
  end
  it " assert_equal(-1, chop(0, [1, 3, 5, 7]))" do
    t_chop(0, [1, 3, 5, 7]).should == -1
  end
  it " assert_equal(-1, chop(2, [1, 3, 5, 7]))" do
    t_chop(2, [1, 3, 5, 7]).should == -1
  end
  it " assert_equal(-1, chop(4, [1, 3, 5, 7]))" do
    t_chop(4, [1, 3, 5, 7]).should == -1
  end
  it " assert_equal(-1, chop(6, [1, 3, 5, 7]))" do
    t_chop(6, [1,3,5,7]).should == -1
  end
  it " assert_equal(-1, chop(8, [1, 3, 5, 7]))" do
    t_chop(8, [1, 3, 5, 7]).should == -1
  end
end
