class Acronym
  class << self
    def abbreviate(str)
      str
        .scan(/(?:^|\s|-)(\w)/)
        .join
        .upcase
    end
  end
end