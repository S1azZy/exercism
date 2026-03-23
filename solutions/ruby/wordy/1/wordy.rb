class WordProblem
  def initialize(str)
    @expression = normalize(str)
  end

  def answer
    raise ArgumentError if invalid?

    calculation = ['+'] + expression.split
    calculation.reduce(0) do |acc, operand|
      case acc
      when Integer
        acc.method(operand.to_sym)
      when Method
        acc.call(operand.to_i)
      else
        0
      end
    end
  end

  private

  attr_reader :expression

  def invalid?
    expression.empty? || expression.match?(/[^\d\s\+\-\*\/]/)
  end

  def normalize(raw_string)
    expr = raw_string.match(/(?:What is )(?<operations>.+)(?:\?)/)
    return '' if expr.nil?

    operations = expr[:operations]
    change_list = {
      'plus' => '+',
      'minus' => '-',
      'multiplied by' => '*',
      'divided by' => '/'
    }
    regex = /(#{change_list.keys.join('|')})/

    operations.gsub(regex, change_list)
  end
end