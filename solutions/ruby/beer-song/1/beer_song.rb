=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end
class BeerSong
  def self.recite(bottles_count, lines)
      (1..lines).map do |i|
          song_line(bottles_count - i + 1)
      end.join("\n")
  end

  def self.song_line(bottles_count)
    case bottles_count
    when 0 then
        "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1 then
        "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    when 2 then
    "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"    
    when 3..99 then
        "#{bottles_count} bottles of beer on the wall, #{bottles_count} bottles of beer.\nTake one down and pass it around, #{bottles_count - 1} bottles of beer on the wall.\n"
    end
  end
end