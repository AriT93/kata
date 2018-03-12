require 'digest/md5'
#so far this is stolen from various places on the web to help learning.
#I still need to do a clean impl on my own
# ok played around and this works.  also I think I could pass in a second block here too.
# this is inspired by Peter cooper's bloomingsimple code
class BloomFilter

  def initialize(size, hashses, word_list, &block)
    @size = size
    @bitmap = Array.new(@size)
    @bitmap.fill(0)


    @hasfunc = block || lambda do |word|
      digest = Digest::MD5.hexdigest(word)
      [h1 =  digest[1,5].to_i(16) % @size -1, h2 = word.hash, word.size ** 2]
    end

    File.new(word_list, 'r').each_line do |word|
      add(word.strip)
    end
  end

  def search(word)
    @hasfunc[word.strip].each { |w| return false unless @bitmap[w % @size] == 1} and true
  end

  def add(word)
    @hasfunc[word].each{ |w| @bitmap[w % @size] = 1}
  end
end
