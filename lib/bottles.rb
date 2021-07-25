# frozen_string_literal: true

# Produces lyrics to "99 bottles of beer" song
class Bottles
  def verse(number)
    <<~VERSE
      #{(bottles number).capitalize} of beer on the wall, #{bottles number} of beer.
      #{action number}, #{bottles number - 1} of beer on the wall.
    VERSE
  end

  def verses(from, to)
    from.downto(to).map do |n|
      verse n
    end.join("\n")
  end

  def song
    verses 99, 0
  end

  def bottles(number)
    case number
    when ->(n) { n.negative? }
      '99 bottles'
    when 0
      'no more bottles'
    when 1
      '1 bottle'
    else
      "#{number} bottles"
    end
  end

  def action(number)
    case number
    when 0
      'Go to the store and buy some more'
    when 1
      'Take it down and pass it around'
    else
      'Take one down and pass it around'
    end
  end
end
