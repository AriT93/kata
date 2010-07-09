require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'codebreaker'

describe Codebreaker do
  before(:all) do
    CB = Codebreaker.new()
  end

  it "should return 4,0 for same data" do
    CB.secret = %w{ r b g y }
    CB.guess(%w{ r b g y }).should == [ 4 , 0 ]
  end

  it "should  return 2,2 for same data in almost same order" do
    CB.secret = %w{ r b g g }
    CB.guess(%w{ r g b g}).should == [ 2 , 2 ]
  end

  it "should return 1,3 for this set rcgb and rbcg" do
    CB.secret = %w{ r c g b }
    CB.guess(%w{ r b c g }).should == [1,3]
  end

  it "should return 1, 0 for rrrb and cccb" do
    CB.secret = %w{ r r r b }
    CB.guess(%w{ c c c b }).should == [1, 0]
  end
end
