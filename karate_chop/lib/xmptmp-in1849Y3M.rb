class Karate
  # def chop(val, array)
  #    array.index(val) ? array.index(val) : -1
  # end

  def chop(val, array)
    if array.empty?
      return -1
    end

    max = array.length
    min = 0

    begin
      mid = (((min + max)/2)*100).round.
      if val > array[mid]
        min = mid + 1
      else
        min = mid - 1
      end
    end until ((array[mid] == val) or (min > max))

    if (min > max)
      return -1
    else
      return mid
    end
  end

end
