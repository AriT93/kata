# Simple class as part of a kata exercise
class TriangleNumber
  def initialize
    @letterHash = { }
    start = "A"
    (1..26).each do |i|
      @letterHash[start] = i
      start = start.succ
    end
  end

  def triangle_number(n)
    (n * (n + 1))/2
  end

  def is_triangle(n)
    retval = false
    (1..n).each do |b|
      t = triangle_number(b)
      retval = t == n
      break if retval
    end
    retval
  end

  def letter_val(letter)
    @letterHash[letter.upcase]
  end

  def word_val(word)
    retval = 0
    word.split(//).each do |a|
      retval = retval + letter_val(a)
    end
    retval
  end

  def is_triangle_word(word)
    is_triangle(word_val(word))
  end

  def count_words_in_file(file)
    count = 0
    File.open(file).each{ |line|
      line.split(",").each { |word|
        if self.is_triangle_word(word.gsub('"',''))
          count = count + 1
        end
      }
    }
   count
  end
end
