class House

  @@clause = [
    "This clause is unknown",
    "",
    "malt that lay in the ",
    "rat that ate the malt that lay in the ",
    "cat that killed the rat that ate the malt that lay in the ",
    "dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
  ]

  def line(number)
    "This is the #{@@clause[number]}house that Jack built.\n"
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end
