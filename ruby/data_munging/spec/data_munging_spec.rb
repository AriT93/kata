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

end
