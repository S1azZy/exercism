class Hamming
  class << self
    def compute(dna_one, dna_second)
      raise ArgumentError if dna_one.size != dna_second.size

      result = 0
      (0...dna_one.size).lazy.each do |index|
        result += 1 if dna_one[index] != dna_second[index]
      end

      result
    end
  end
end