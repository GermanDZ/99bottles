class Bottles
  def verse(number)
    "#{bottles_count(number)} of beer on the wall, #{bottles_count(number)} of beer.\n" \
    "Take #{number > 1 ? "one" : "it"} down and pass it around, #{bottles_count(number-1)} of beer on the wall.\n"
  end

  def bottles_count(number)
    return "no more bottles" if number.zero?
    "#{number} bottle#{"s" if number > 1}"
  end
end
