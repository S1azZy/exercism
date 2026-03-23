class Array
  class << self
    def recursive_accumulate(head = nil, *tail, &block)
      return [] if head.nil?

      current = yield head
      [current] + recursive_accumulate(*tail, &block)
    end
  end

  def accumulate(&block)
    Array.recursive_accumulate(*self, &block)
  end
end