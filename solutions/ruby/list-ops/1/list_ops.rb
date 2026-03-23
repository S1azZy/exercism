class ListOps
  class << self
    def arrays(list)
      size = 0
      list.each { |_| size += 1 }

      size
    end

    def reverser(list)
      result = []

      (list.size - 1).downto(0) do |index|
        result << list[index]
      end

      result
    end

    def concatter(list1, list2)
      result = []
      0.upto(list1.size - 1) do |index|
        result << list1[index]
      end

      0.upto(list2.size - 1) do |index|
        result << list2[index]
      end
      result
    end

    def mapper(list)
      result = []
      list.each do |element|
        result << (yield element)
      end
      result
    end

    def filterer(list)
      result = []
      list.each do |element|
        result << element if yield element
      end
      result
    end

    def sum_reducer(list)
      result = 0
      list.each { |element| result += element }
      result
    end

    def factorial_reducer(list)
      result = 1
      list.each { |element| result *= element }
      result
    end
  end
end