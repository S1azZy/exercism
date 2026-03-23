class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(code)
    COLORS.index(code)
  end
end