class ArmstrongNumbers
  def self.include?(number)
    chars = number.to_s.chars
    chars.sum { |c| c.to_i ** chars.size } == number
  end
end
