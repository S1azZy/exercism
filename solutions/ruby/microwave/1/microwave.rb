class Microwave

  attr_reader :seconds
  
  def initialize(seconds)
    @seconds = seconds
  end

  def timer
    minutes, rest = seconds.divmod(100)
    m, s = rest.divmod(60)
    format("%02d:%02d", m + minutes, s)
  end
end