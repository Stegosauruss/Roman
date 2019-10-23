class RomanNumerals
  NUMERALS = [
    {value: 1000, symbol: 'M'},
    {value: 900, symbol: 'CM'},
    {value: 400, symbol: 'CD'},
    {value: 100, symbol: 'C'},
    {value: 90, symbol: 'XC'},
    {value: 50, symbol: 'L'},
    {value: 40, symbol: 'XL'},
    {value: 10, symbol: 'X'},
    {value: 9, symbol: 'IX'},
    {value: 5, symbol: 'V'},
    {value: 4, symbol: 'IV'},
    {value: 1, symbol: 'I'},
  ]

  def initialize
    @numeral = ""
    @integer = 0
    @finished = false
    @numerals = NUMERALS
  end

  def translate(integer)
    @integer = integer
    @numeral = ""
    @numerals.each do |numeral|
      chipper(numeral[:value], numeral[:symbol])
    end
    return @numeral
  end

  private

  def chipper(numeral_value, numeral)
    while (true) do
      if @finished == true
        @finished = false
        break
      end
      chip(numeral_value, numeral)
    end
  end

  def chip(numeral_value, numeral)
    if @integer >= numeral_value
      @numeral << numeral
      @integer -= numeral_value
    else
      @finished = true
    end
  end

end