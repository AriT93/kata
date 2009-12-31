class Karate
  # def chop(val, array)
  #    array.index(val) ? array.index(val) : -1
  # end

  def chop(val, array)
    if array.empty?
      return -1
    end
    len = array.length
    while len > 0
      if  array[((len/2).to_i)] != val
        return (len/2).
      else
        len = (len/2).to_i
      end
    end
  end
end
