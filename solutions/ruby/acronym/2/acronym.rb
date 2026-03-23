class Acronym
  class << self
    def abbreviate(str)
      str
        .split(/[\s_-]/)
        .map { |word| word.slice(0) }
        .join
        .upcase
    end
  end
end