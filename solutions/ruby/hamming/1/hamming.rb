class Hamming
  class << self
    def compute(dna_one, dna_second)
      raise ArgumentError if dna_one.size != dna_second.size

      dna_one.chars.zip(dna_second.chars).filter do |chars|
        chars.first != chars.last
      end.size
    end
  end
end