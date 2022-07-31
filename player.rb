
def playerGoes(deck, hand, topCard)
  puts "Top card is " + printCard(topCard) 
  puts "You're turn"
  playable_cards = get_playable_cards(hand, topCard)
  if playable_cards.length === 0 
    # draw card
  else 
    # TODO: impliment auto-play
    player_chooses_card(hand) 
  end
end

def player_chooses_card(hand)
  puts "Play card: " + printHand(hand)
  input = gets
  chosenCard = checkForCard(hand, input)
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

