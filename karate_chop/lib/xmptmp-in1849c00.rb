class Karate
  # def chop(val, array)
  #    array.index(val) ? array.index(val) : -1
  # end

  # def chop(val, array)
  #   if array.empty?
  #     return -1
  #   end

  #   max = array.length
  #   min = 0

  #   begin
  #     mid = ((min + max)/2)
  #     if val > array[mid].to_i
  #       min = mid + 1
  #     else
  #       max = mid - 1
  #     end
  #   end until ((array[mid] == val) or (min > max))

  #   if array[mid] == val
  #     return mid
  #   else
  #     return -1
  #   end
  # end

  def chop(val, array)
    return rcChop(val,array,array.)
  end
end
