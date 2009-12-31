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
      if  array[((len/2).)] != val
        return 
      else
        len = Math.abs(len/2)
      end
    end
  end
end
