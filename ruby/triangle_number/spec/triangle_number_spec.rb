require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe TriangleNumber do
  before(:all) do
    TN = TriangleNumber.new()
  end

  it "TriangleNumber.triangle_number should return 55 for 10" do
    TN.triangle_number(10).should == 55
  end

  it "TriangleNumber.is_triangle should return true for 55" do
    TN.is_triangle(55).should == true
  end
  it "TriangleNumber.letter_val should return 1 for A" do
    TN.letter_val("A").should == 1
  end
  it "TriangleNumber.letter_val should return 26 for Z" do
      TN.letter_val("Z").should == 26
  end
  it "TriangleNumber.letter_val should return 13 for m or M" do
    TN.letter_val("m").should == 13
    TN.letter_val("M").should == 13
  end
  it "TriangleNumber.letter_val should return 13 for m or M" do
    TN.letter_val("M").should == 13
  end
  it "TriangleNumber.word_val should return 55 for 'sky'" do
    TN.word_val("sky").should == 55
  end
  it "TriangleNumber.is_triangle_word should return true for 'sky'" do
    TN.is_triangle_word("sky").should == true
  end
  it "ski is not a triange word" do
    TN.is_triangle_word("ski").should == false
  end
  it "should count 162 triangle words in file words.txt" do
    TN.count_words_in_file("words.txt").should == 162
  end

  #comment
end
