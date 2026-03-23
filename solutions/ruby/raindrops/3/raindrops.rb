class Raindrops
  class << self
    def convert(number)
      mapping = {
        3 => 'Pling',
        5 => 'Plang',
        7 => 'Plong'
      }

      result = mapping.map do |(divider, name)|
        name if (number % divider).zero?
      end.join

      result.empty? ? number.to_s : result
    end
  end
end