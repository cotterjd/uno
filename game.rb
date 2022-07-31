def printCard(card)
  if card[:color] != "none"
    return card[:color] + " " + card[:value]
  else
    return card[:value]
  end
end

def printHand(hand) 
  arr = Array.new 
  hand.each do |card|
    arr.push(printCard(card))
  end

  return arr.join(", ")
end

def get_playable_cards(hand, topCard)
  return hand.select{|card| 
    card[:color] === topCard[:color] ||
    card[:value] === topCard[:value]
    # TODO: add wild logic
    # card[:value].include? "wild"
  }
end 

