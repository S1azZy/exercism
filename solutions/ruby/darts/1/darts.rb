class Darts
  def initialize(x, y)
    @x = x.abs
    @y = y.abs
  end

  def score
    case radius
    when 0..1 then 10
    when 1..5 then 5
    when 5..10 then 1
    else 0
    end
  end

  def radius
    if x == 0 || y == 0
      [x, y].max
    else
      (x * x + y * y).to_f ** 0.5
    end
  end

  private

  attr_reader :x, :y
end