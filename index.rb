require "./deck"

deck = getDeck()

 def getRandomHand(deck) 
   hand = Array.new
   for i in 1..7 do 
     card = deck[rand(deck.length)]
     hand.push(card)
     deck.delete_if{|x| x[:id] === card[:id]}
   end
   return hand
 end

compHand = getRandomHand(deck)
playerHand = getRandomHand(deck)

