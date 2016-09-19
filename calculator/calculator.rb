class Calculator
  def initialize
    @input = []
  end

  def <<(n)
    @input << n.to_f
  end

  def add
    @input.inject :+
    # result =0
    # @input.each do |i|
    #   result += i
    # end
    # result
  end

  def subtract
    @input.inject :-
  end

  def multiply
    @input.inject :*
  end

  def divide
    @input.inject :/
  end

end
