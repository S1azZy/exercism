class Raindrops
  class << self
    def convert(number)
      mapping = {
        3 => 'Pling',
        5 => 'Plang',
        7 => 'Plong'
      }

      dividers = (1..number).filter { |divider| (number % divider).zero? && mapping.key?(divider) }

      result = dividers.map { |divider| mapping[divider] }.join

      result.empty? ? number.to_s : result
    end
  end
end