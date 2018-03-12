# frozen_string_literal: true

# Karate Chop Class for Kata
class KarateChop
  def chop(num, arr)
    low = 0
    high = arr.size
    mid = 0

    loop do
      mid = ((low + high) / 2)
      if arr[mid].to_i < num
        low = mid + 1
      else
        high = mid - 1
      end
      break if (low > high) || (arr[mid] == num)
    end

    arr[mid] == num ? mid : -1
  end
end
