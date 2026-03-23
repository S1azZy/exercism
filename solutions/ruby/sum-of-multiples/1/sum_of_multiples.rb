class SumOfMultiples
  attr_reader :list

  def initialize(*list)
    @list = list.filter(&:positive?)
  end

  def to(n)
    list.flat_map do |i|
      (0...n).map do |j|
        j % i == 0 ? j : 0
      end 
    end.uniq.sum
  end
end 