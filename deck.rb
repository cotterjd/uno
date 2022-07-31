require "securerandom"


def createCard(value, color)
  return { id: SecureRandom.uuid, value: value, color: color }
end

def getDeck
  deck = Array.new
  colors = Array.new
  colors = ["blue", "yellow", "green", "red"] 
  colors.each do |color|
    for j in 0..9 do
      for q in 0..2 do
        deck.push(createCard(j.to_s, color))
      end
    end
    for n in 1..2 do 
      deck.push(createCard("skip",    color))
      deck.push(createCard("reverse", color))
      deck.push(createCard("draw 2",  color))
    end
  end
  for k in 1..4 do
    for v in 1..2 do
      deck.push(createCard("draw 4 wild", "none"))
    end
  end
  return deck
end

def getRandomHand(deck) 
  hand = Array.new
  for i in 1..7 do 
    card = deck[rand(deck.length)]
    hand.push(card)
    deck.delete_if{|x| x[:id] === card[:id]}
  end
  return hand
end

def getRandomCard(deck)
  card = deck[rand(deck.length)]
  deck.delete_if{|x| x[:id] === card[:id]}
  return card
end

def printCard(card)
  return card[:color] + " " + card[:value]
end
