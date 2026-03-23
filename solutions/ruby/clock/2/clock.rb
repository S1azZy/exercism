class Clock
  MINUTES_IN_HOUR = 60
  MINUTES_IN_DAY = 1440

  attr_reader :internal

  def initialize(hour: 0, minute: 0)
    minutes = minute + MINUTES_IN_HOUR * hour
    _, @internal = minutes.divmod(MINUTES_IN_DAY)
  end

  def to_s
    hour, minutes = internal.divmod(MINUTES_IN_HOUR)

    "%02d:%02d" % [hour, minutes]
  end

  def +(other)
    Clock.new(minute: internal + other.internal)
  end

  def -(other)
    Clock.new(minute: internal - other.internal)
  end

  def ==(other)
    other.internal == internal
  end
end