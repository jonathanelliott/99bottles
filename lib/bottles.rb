class Bottles
  def verse n
    return <<-VERSE
#{(bottles n).capitalize} of beer on the wall, #{bottles n} of beer.
#{action n}, #{bottles (n-1)} of beer on the wall.
    VERSE
  end
  def verses start_verse, end_verse
    start_verse.downto(end_verse).map do |n|
      verse n
    end.join("\n")
  end
  def song
    verses 99, 0
  end
  def bottles n
    if n < 0
      "99 bottles"
    elsif n == 1
      "1 bottle"
    elsif n == 0
      "no more bottles"
    else
      "#{n} bottles"
    end
  end
  def action n
    if n == 0
      "Go to the store and buy some more"
    elsif n == 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end
end