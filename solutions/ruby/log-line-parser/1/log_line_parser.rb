class LogLineParser
  attr_reader :line, :log_level, :message
  
  def initialize(line)
    @line = line
    (first, second) = line.split(":")
    @log_level = first.delete("[]").downcase
    @message = second.strip
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
