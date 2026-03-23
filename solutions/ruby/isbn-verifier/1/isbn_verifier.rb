class IsbnVerifier
  def self.valid?(code)
    *head, tail = code.scan(/[0-9X]/)
    tail = "10" if tail == "X"
    digits = head.push(tail).filter_map do |c|
      c.to_i.to_s == c ? c.to_i : nil
    end

    return false if digits.size != 10

    result = digits.reverse.map.with_index do |digit, index|
      (index + 1) * digit
    end.sum

    result % 11 == 0
  end
end