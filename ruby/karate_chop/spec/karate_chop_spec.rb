# frozen_string_literal: true

RSpec.describe KarateChop do
  Given(:karate_chop) { KarateChop.new }

  Then { karate_chop.chop(3, []) == -1 }
  Then { karate_chop.chop(3, [1]) == -1 }
  Then { karate_chop.chop(1, [1]) == 0 }

  Then { karate_chop.chop(1, [1, 3, 5]) == 0 }
  Then { karate_chop.chop(3, [1, 3, 5]) == 1 }
  Then { karate_chop.chop(5, [1, 3, 5]) == 2 }
  Then { karate_chop.chop(0, [1, 3, 5]) == -1 }
  Then { karate_chop.chop(2, [1, 3, 5]) == -1 }
  Then { karate_chop.chop(4, [1, 3, 5]) == -1 }
  Then { karate_chop.chop(6, [1, 3, 5]) == -1 }

  Then { karate_chop.chop(1, [1, 3, 5, 7]) == 0 }
  Then { karate_chop.chop(3, [1, 3, 5, 7]) == 1 }
  Then { karate_chop.chop(5, [1, 3, 5, 7]) == 2 }
  Then { karate_chop.chop(7, [1, 3, 5, 7]) == 3 }
  Then { karate_chop.chop(0, [1, 3, 5, 7]) == -1 }
  Then { karate_chop.chop(2, [1, 3, 5, 7]) == -1 }
  Then { karate_chop.chop(4, [1, 3, 5, 7]) == -1 }
  Then { karate_chop.chop(6, [1, 3, 5, 7]) == -1 }
  Then { karate_chop.chop(8, [1, 3, 5, 7]) == -1 }
end
