class Bottles
  def verse(number)
    "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
    "Take one down and pass it around, #{number-1} bottle#{"s" if number > 2} of beer on the wall.\n"
  end
end
