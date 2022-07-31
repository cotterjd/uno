require "./deck"
require "./game"

deck = getDeck()
turn = "you"
topCard = getRandomCard(deck)

compHand = getRandomHand(deck)
playerHand = getRandomHand(deck)

while compHand.length != 0 && playerHand.length != 0 do
  if turn === "you"
    newTopCard = playerGoes(deck, playerHand, topCard)
    # TODO: remove card from players hand
    # playerHand.delete_if{|card| card[:id] === newTopCard[:id]}
    topCard = newTopCard
    turn = "comp"
  end
  if turn === "comp" 
    compHand.pop
  end
end

if compHand.length === 0
 puts "Sorry, computer wins!"
else
 puts "Congratulations, you win!"
end

