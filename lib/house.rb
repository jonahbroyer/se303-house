class House

  attr_reader :starting_phrase

  def initialize(starting_phrase = "This is")
    @starting_phrase = starting_phrase
    @clause = [
      "This clause is unknown",
      "",
      "malt that lay in the ",
      "rat that ate the ",
      "cat that killed the ",
      "dog that worried the ",
      "cow with the crumpled horn that tossed the ",
      "maiden all forlorn that milked the ",
      "man all tattered and torn that kissed the ",
      "priest all shaven and shorn that married the ",
      "rooster that crowed in the morn that woke the ",
      "farmer sowing his corn that kept the ",
      "horse and the hound and the horn that belonged to the ",
    ]
  end

  def line(number)
    "#{starting_phrase} the #{build_line(number)}house that Jack built.\n"
  end

  def build_line(number)
    number.downto(1).collect { |i| @clause[i] }.join("")
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end

class Pirate < House

  def line(number)
    "Thar be the #{build_line(number)}house that Jack built.\n"
  end

end

class RandomHouse < House

end