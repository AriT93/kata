class Karate
  # def chop(val, array)
  #    array.index(val) ? array.index(val) : -1
  # end

  def chop(val, array)
    unless array.empty?
      return -1
    end
    len = array.length

    while len > 0
      if  array[(Math.abs(len/2))] != val
        return Math.abs(len/2)
      else
        len = Math.
      end
    end
  end
end
