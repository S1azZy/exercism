class Acronym
  class << self
    def abbreviate(str)
      str
        .split(/[\s_-]/)
        .reject(&:empty?)
        .map { |word| word.slice(0).upcase }
        .join
    end
  end
end