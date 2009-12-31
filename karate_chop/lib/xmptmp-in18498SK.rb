class Karate
  # def chop(val, array)
  #    array.index(val) ? array.index(val) : -1
  # end

  def chop(val, array)
    unless array.empty?
      return -1
    end
    len = array.length

    while array[(Math.abs(len/2))] != val
      len = Math.abs(len/2)
    end
    return Math.
  end
end
