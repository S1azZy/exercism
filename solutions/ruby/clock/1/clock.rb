class Clock

  attr_reader :initial_minutes

  def initialize(hour: 0, minute: 0)
    minutes = minute + 60 * hour
    _, @initial_minutes = minutes.divmod(1440)
  end

  def to_s
    hour, minutes = initial_minutes.divmod(60)

    "%02d:%02d" % [hour, minutes]
  end

  def +(other)
    Clock.new(minute: initial_minutes + other.initial_minutes)
  end

  def -(other)
    Clock.new(minute: initial_minutes - other.initial_minutes)
  end

  def ==(other)
    other.initial_minutes == initial_minutes
  end
end