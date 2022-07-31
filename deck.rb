require "securerandom"

def createCard(value, color)
  return { id: SecureRandom.uuid, value: value, color: color }
end

def getDeck
  deck = Array.new
  colors = Array.new
  colors = ["blue", "yello", "green", "red"] 
  for i in 0..colors.length-1 do
    for j in 0..9 do
      for q in 0..2 do
        deck.push(createCard(j.to_s, colors[i]))
      end
    end
    for n in 1..2 do 
      deck.push(createCard("skip",    colors[i]))
      deck.push(createCard("reverse", colors[i]))
      deck.push(createCard("draw 2",  colors[i]))
    end
  end
  for k in 1..4 do
    for v in 1..2 do
      deck.push(createCard("draw 4 wild", "none"))
    end
  end
  return deck
end

