class Grains
  class << self
    def square(n)
      raise ArgumentError unless (1..64).cover?(n)

      2.pow(n - 1)
    end

    def total
      (0..63).sum { |n| 2.pow(n) }
    end
  end
end