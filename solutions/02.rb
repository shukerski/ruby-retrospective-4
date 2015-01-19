class NumberSet
  include Enumerable

  def initialize()
    @numbers = []
  end

  def each(&block)
    @numbers.each(&block)
  end

end