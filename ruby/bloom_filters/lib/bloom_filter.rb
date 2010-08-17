require 'digest/md5'
#so far this is stolen from various places on the web to help learning.
#I still need to do a clean impl on my own

class BloomFilter

  def initialize(size, hashses, word_list)
    @bitmap = Array.new(size)
    @bitmap.fill(0)
    @hashes = Array.new(hashses){ |i| BloomHash.new(i,size - 1)}

    File.new(word_list, 'r').each_line do |word|
      @hashes.each{|h| @bitmap[h.compute(word.downcase.strip)] = 1}
    end
  end
  def search(word)
    @hashes.each { |h| return false if @bitmap[h.compute(word.downcase.strip)] == 0}
    return true
  end
end



class BloomHash
  def initialize(seed, max_value)
    @offset = seed
    @num_digits = 0
    @max_value = max_value
    while(max_value > 0) do
      @num_digits += 1
      max_value >>= 4
    end
  end

  def compute(word)
    digest = Digest::MD5.hexdigest(word)
    return digest[@offset, @num_digits].to_i(16) % @max_value
  end
end
