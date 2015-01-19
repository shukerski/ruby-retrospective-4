class NumberSet
  include Enumerable

  def initialize()
    @numbers = []
  end

  def each(&block)
    @numbers.each(&block)
  end

  def <<(number)
    @numbers << number unless @numbers.include? number
  end

  def size
    @numbers.size
  end

  def empty?
    @numbers.empty?
  end

end