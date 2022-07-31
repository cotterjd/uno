def getDeck
  deck = Array.new
  colors = Array.new
  colors = ["blue", "yello", "green", "red"] 
  for i in 0..colors.length-1 do
    for j in 0..9 do
      deck.push({ value: j.to_s, color: colors[i] })
      deck.push({ value: j.to_s, color: colors[i] })
    end
    deck.push({ value: "skip", color: colors[i] })
    deck.push({ value: "skip", color: colors[i] })
    deck.push({ value: "reverse", color: colors[i] })
    deck.push({ value: "reverse", color: colors[i] })
    deck.push({ value: "draw 2", color: colors[i] })
    deck.push({ value: "draw 2", color: colors[i] })
  end
  deck.push({ value: "wild", color: "none" })
  deck.push({ value: "wild", color: "none" })
  deck.push({ value: "wild", color: "none" })
  deck.push({ value: "wild", color: "none" })
  deck.push({ value: "draw 4 wild", color: "none" })
  deck.push({ value: "draw 4 wild", color: "none" })
  deck.push({ value: "draw 4 wild", color: "none" })
  deck.push({ value: "draw 4 wild", color: "none" })
# TODO: add ids
  return deck
end


d = getDeck()
puts d
