class Matrix
  attr_reader :rows, :columns

  def initialize(str)
    @rows =
      str.split(/\n/).map(&:split).map do |row|
        row.map(&:to_i)
      end

    @columns = @rows.transpose
  end
end
