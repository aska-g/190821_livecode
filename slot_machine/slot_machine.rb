class SlotMachine
  def score(reels)
    results = {
      "joker" => {
        3 => 50,
        2 => 25
      },
      "star" => {
        3 => 40,
        2 => 20
      },
      "bell" => {
        3 => 30,
        2 => 15
      },
      "cherry" => {
        3 => 10,
        2 => 5
      },
      "seven" => {
        3 => 20,
        2 => 10
      }
    }

    # check if all symbols are the same
    if reels.count(reels[0]) == 3
      # look up the result in the hash
      results[reels[0]][3]
    # check if there is a 'joker'
    elsif reels.include?("joker")
      # count the 'joker'
      joker_count = reels.count("joker")

      # if 2 'joker'
      if joker_count == 2
        # look up the result from the hash
        results["joker"][2]
      # else = there's 1 'joker'
      else
        # remove the joker to compare the other elements
        reels.delete("joker")

        # if both the same
        if reels[0] == reels[1]
          # look up the result in the hash
          results[reels[0]][2]
        # else = 1 joker and 2 different symbols
        else
          # return zero point
          0
        end
      end
    else
      # no 'joker' and not 3 the same
      0
    end
  end
end

