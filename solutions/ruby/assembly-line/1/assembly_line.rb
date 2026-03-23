class AssemblyLine
  ITEMS_PER_HOUR = 221

  attr_reader :speed

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @production_rate_per_hour ||= speed.to_f * ITEMS_PER_HOUR * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  def success_rate
    case speed
    when 1..4
      1.0
    when 5..8
      0.9
    when 9
      0.8
    when 10
      0.77
    else
      0
    end
  end 
end
