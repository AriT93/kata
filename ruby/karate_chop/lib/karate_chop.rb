# frozen_string_literal: true

# Karate Chop Class for Kata
class KarateChop
  def chop(num, arr)
    chop_inner(num, arr, arr.size, 0)
  end

  def chop_inner(num, arr, high, low)
    return -1 if low > high
    mid = low + ((high - low) / 2)
    return chop_inner(num, arr, mid - 1, low)  if
      arr[mid].to_i > num
    return chop_inner(num, arr, high, mid + 1) if
      arr[mid].to_i < num
    mid
  end
end
