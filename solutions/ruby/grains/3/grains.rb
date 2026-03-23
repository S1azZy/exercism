class Grains
  class << self
    def square(n)
      raise ArgumentError unless (1..64).cover?(n)

      pow(n - 1)
    end

    def total
      (0..63).sum { |n| pow(n) }
    end

    private

    def pow(n)
      2.pow(n)
    end
  end
end