class House

  def line(number)
    case number
    when 1
      "This is the house that Jack built.\n"
    when 2
      "This is the malt that lay in the house that Jack built.\n"
    else
      "This is the #{phrase(number)} malt that lay in the house that Jack built.\n"
    end
  end

  def phrase(number)
    if number == 12
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
      "rat that ate the"
    else
      ""
    end
  end

  def recite
    (1..12).map { |number| line(number) }.join("\n")
  end
end
