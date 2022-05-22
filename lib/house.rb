class House

  @@clause = [
    "",
    "malt that lay in the ",
    "rat that ate the malt that lay in the ",
    "cat that killed the rat that ate the malt that lay in the ",
    "dog that worried the cat that killed the rat that ate the malt that lay in the ",
    "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the ",
  ]

  def line(number)
    "This is the #{phrase(number)}house that Jack built.\n"
  end

  def phrase(number)
    if number < @@clause.length
      return @@clause[number - 1]
    elsif number == 12
      "horse and the hound and the horn that belonged to the #{phrase(number - 1)}"
    elsif number == 11
      "farmer sowing his corn that kept the #{phrase(number - 1)}"
    elsif number == 10
      "rooster that crowed in the morn that woke the #{phrase(number - 1)}"
    elsif number == 9
      "priest all shaven and shorn that married the #{phrase(number - 1)}"
    elsif number == 8
      "man all tattered and torn that kissed the #{phrase(number - 1)}"
    elsif number == 7
      "maiden all forlorn that milked the #{phrase(number - 1)}"
    elsif number == 6
      "cow with the crumpled horn that tossed the #{phrase(number - 1)}"
    elsif number == 5
      "dog that worried the #{phrase(number - 1)}"
    elsif number == 4
      "cat that killed the #{phrase(number - 1)}"
    elsif number == 3
      "rat that ate the #{phrase(number - 1)}"
    elsif number == 2
      "malt that lay in the #{phrase(number - 1)}"
    end
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end
