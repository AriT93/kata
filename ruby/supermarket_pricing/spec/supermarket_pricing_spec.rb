require 'spec_helper'

RSpec.describe Supermarket_pricing  do
  before(:all) do
    @spFx = Supermarket_pricing.new()
  end

  it 'returns 0 for a price' do
    expect(@spFx.price("")).to eq  0
  end
end
