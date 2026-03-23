class Luhn
  class << self
    def valid?(str)
      str = str.gsub(/\s/, '')
      return false if str.size < 2 || str.match?(/[^0-9]/)

      digits = str.scan(/\d/).map(&:to_i).reverse

      result = digits.each_slice(2).sum do |pair|
        first, second = *pair
        second = (second || 0) * 2
        second -= 9 if second > 9

        first + second
      end

      (result % 10).zero?
    end
  end
end