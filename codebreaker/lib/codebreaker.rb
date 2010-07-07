class Codebreaker
  attr_accessor :secret

  def initialize
    @secret = ""
  end

  def guess(arIn)
    retval = []
    retval.push(positional_matches(arIn))
    retval.push(simple_matches(arIn))
  end
  def positional_matches(arIn)
    [arIn, @secret].transpose.inject(0) do | count, colors|
      count + (colors[0] == colors[1] ? 1 : 0)
    end
  end
  def simple_matches(arIn)
    if arIn.uniq.size == 4
      (@secret & arIn).size - positional_matches(arIn)
      else
      (@secret & arIn).size - (arIn.uniq.size - positional_matches(arIn) )
    end
  end
end
