class House

  attr_reader :starting_phrase

  def initialize(starting_phrase = "This is")
    @starting_phrase = starting_phrase
    @clause = clause
  end

  def clause
    [
      'the horse and the hound and the horn that belonged to',
      'the farmer sowing his corn that kept',
      'the rooster that crowed in the morn that woke',
      'the priest all shaven and shorn that married',
      'the man all tattered and torn that kissed',
      'the maiden all forlorn that milked',
      'the cow with the crumpled horn that tossed',
      'the dog that worried',
      'the cat that killed',
      'the rat that ate',
      'the malt that lay in',
      'the house that Jack built',
    ]
  end

  def line(number)
    "#{starting_phrase} #{clause.last(number).join(' ')}.\n"
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end

class Pirate < House

  def initialize(starting_phrase = "Thar be")
    @starting_phrase = starting_phrase
    @phrase = clause
  end

  def line(number)
    "#{starting_phrase} #{clause.last(number).join(' ')}.\n"
  end

end

class RandomHouse < House

end