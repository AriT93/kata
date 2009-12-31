class Karate
  def chop_simple(val, array)
     array.index(val) ? array.index(val) : -1
  end

  def chop_iteritive(val, array)
    if array.empty?
      return -1
    end

    max = array.length
    min = 0

    begin
      mid = ((min + max)/2)
      if val > array[mid].to_i
        min = mid + 1
      else
        max = mid - 1
      end
    end until ((array[mid] == val) or (min > max))

    if array[mid] == val
      return mid
    else
      return -1
    end
  end

  def chop_recursive(val, array)
    return rcChop(val,array,array.length,0)
  end
  def rcChop(val, array, high, low)
    if(low > high)
      return -1
    end
    mid = low + ((high - low )/2)
    if array[mid].to_i  > val
      return rcChop(val, array, mid - 1,low)
    elsif array[mid].to_i < val
      return rcChop(val, array, high, mid + 1)
    else
      return mid
    end
  end
end
