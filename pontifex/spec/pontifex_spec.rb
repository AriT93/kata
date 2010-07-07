require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe Encrypter do
  before(:all) do
    E = Encrypter.new(Deck.new())
  end

  it "should sanitize  the string hi how are you to HIHOW AREYO UXXXX" do
    E.sanitize("hi how are you").eql?("HIHOW AREYO UXXXX").should == true
  end
  it "should return 1 for mod(27)" do
    E.mod(27).should == 1
  end

  it "should return 25 for mod(-1)" do
     E.mod(-1).should == 25
  end

  it "should encrypt ciphertext for a string" do
    E.encrypt('Code in Ruby, live longer!').should == "EQFGK PTWDA NKXGN QPIGT"
  end

  it "should decrypt EQFGK PTWDA NKXGN QPIGT to CODEI NRUBY LIVEL ONGER" do
    E.decrypt("EQFGK PTWDA NKXGN QPIGT").should == "CODEI NRUBY LIVEL ONGER"
  end
end

describe Deck do
  before(:all) do
    D = Deck.new()
  end

  it "should return a letter whe output_letter is called" do
    D.output.to_s.match(/[A-Z]/)
  end
end
