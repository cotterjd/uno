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

def playerGoes(deck, hand, topCard)
  puts "Top card is " + printCard(topCard) 
  puts "You're turn"
  puts "Play card: " + printHand(hand)
  input = gets
  chosenCard = checkForCard(hand, input)
  # TODO: add wild logic 
  if chosenCard.length === 0
    puts "card " + input + " is not in your hand. Please choose a card from your hand (shown above)"
    playerGoes(deck, hand, topCard)
  else 
    return chosenCard[0]
  end
end

def checkForCard(hand, input) 
  return hand.select{ |c| 
    cardName = printCard(c)
    input.chomp.eql?cardName 
  }
end

