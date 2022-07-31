require "./deck"

deck = getDeck()

compHand = getRandomHand(deck)
playerHand = getRandomHand(deck)

beginningCard = getRandomCard(deck)
puts "Beginning card is " + printCard(beginningCard) 
while compHand.length != 0 && playerHand.length != 0 do
 # play game
end

if compHand.length === 0
 puts "Sorry, computer wins!"
else
 puts "Congratulations, you win!"
end

