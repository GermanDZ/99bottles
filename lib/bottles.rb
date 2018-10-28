class Bottles
  def verse(number)
    new_number = number.zero? ? 99 : number - 1
    first_sentence(number) + second_sentence(number, new_number)
  end

  def verses(number1, number2)
    (number2..number1).to_a.reverse.map { |number| verse(number) }.join("\n")
  end

  private

  def first_sentence(number)
    "#{bottles_count(number).capitalize} of beer on the wall, " \
    "#{bottles_count(number)} of beer.\n"
  end

  def second_sentence(number, new_number)
    "#{action(number)}, " \
    "#{bottles_count(new_number)} of beer on the wall.\n"
  end

  def bottles_count(number)
    return "no more bottles" if number.zero?
    "#{number} bottle#{"s" if number > 1}"
  end

  def action(number)
    return "Go to the store and buy some more" if number.zero?
    "Take #{number > 1 ? "one" : "it"} down and pass it around"
  end
end
