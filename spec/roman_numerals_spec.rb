require 'roman_numerals'

describe RomanNumerals do
  let(:romanNumerals) { described_class.new }

  it "returns 'I' when passed 1" do
    expect(romanNumerals.translate(1)).to eq("I")
  end

  it "returns 'II' when passed 2" do
    expect(romanNumerals.translate(2)).to eq("II")
  end

  it "returns 'III' when passed 3" do
    expect(romanNumerals.translate(3)).to eq("III")
  end

  it "returns 'IV' when passed 4" do
    expect(romanNumerals.translate(4)).to eq("IV")
  end

  it "returns 'V' when passed 5" do
    expect(romanNumerals.translate(5)).to eq("V")
  end

  it "returns 'VI' when passed 6" do
    expect(romanNumerals.translate(6)).to eq("VI")
  end

  it "returns 'IX' when passed 9" do
    expect(romanNumerals.translate(9)).to eq("IX")
  end

  it "returns 'X' when passed 10" do
    expect(romanNumerals.translate(10)).to eq("X")
  end

  it "returns 'XI' when passed 11" do
    expect(romanNumerals.translate(11)).to eq("XI")
  end
end