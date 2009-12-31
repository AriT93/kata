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
    len = array.length
    begin
      if val > array[len].
        len += len/2.to_i
      else
        len -= len/2.to_i
      end
    end until ((array[len].to_i == val) or len > array.length)

    if array[len].to_i == val
      return len
    else
      return -1
    end

  end
end
