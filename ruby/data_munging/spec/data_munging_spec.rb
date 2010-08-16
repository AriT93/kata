require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe DataMunging do
  before (:all) do
    Dm = DataMunging.new()
  end

  it "will return a string for weather" do
    Dm.weather.should_not == []
  end

  it "will match two numbers" do
    Dm.weather.should match /\d,\d/
  end

  #for our test file 14,2 is the correct answer

  it "weather will return 14,2" do
    Dm.weather.should == "14,2"
  end

  it "Football will return a string" do
    Dm.football.should_not == []
  end

  it "Football will return a string" do
    Dm.football.should match /\w+/
  end

  it "Football will return Aston_Villa" do
    Dm.football.should == "Aston_Villa"
  end
end
