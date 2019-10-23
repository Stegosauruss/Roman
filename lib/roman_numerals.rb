class RomanNumerals
  def initialize
    @numeral = ""
    @integer = 0
  end

  def translate(integer)
    @integer = integer
    chipper(10, 'X')
    chipper(9, 'IX')
    chipper(5, 'V')
    chipper(4, 'IV')
  
    @integer.times { @numeral << "I" }
    return @numeral
  end


  def chipper(numeral_value, numeral)
    if @integer >= numeral_value
      @numeral << numeral
      @integer -= numeral_value
    end
  end

end