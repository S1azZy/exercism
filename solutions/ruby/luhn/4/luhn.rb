class Luhn
  def initialize(str)
    @str = str.gsub(/\s/, '')
  end

  def perform
    return false if invalid_string_format?

    (checksum % 10).zero?
  end

  def self.valid?(str)
    new(str).perform
  end

  private

  attr_reader :str

  def invalid_string_format?
    str.size <= 1 || str.match?(/[^0-9]/)
  end

  def to_digits
    str.scan(/\d/).map(&:to_i)
  end

  def checksum
    to_digits
      .reverse
      .each_slice(2)
      .sum { |pair| calculate_pair_sum(pair) }
  end

  def calculate_pair_sum(pair)
    first, second = *pair
    second = (second || 0) * 2
    second -= 9 if second > 9

    first + second
  end
end