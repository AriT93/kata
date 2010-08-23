$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),'..','lib'))

require 'bloom_filter'
require 'test/unit'

class TestBloomfilter < Test::Unit::TestCase
  def test_simple
    bf = BloomFilter.new(1000000,4,"data/wordlist.txt")
    assert_equal(true,bf.search("driving"))
    assert_equal(false,bf.search("dribble"))
  end
end
