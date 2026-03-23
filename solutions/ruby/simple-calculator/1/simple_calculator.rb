class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation.new unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError.new unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
    return "Division by zero is not allowed." if second_operand.zero? && operation == "/"


    result = case operation
      when "+"
        first_operand + second_operand
      when "*"
        first_operand * second_operand
      when "/"
        first_operand / second_operand
    end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
