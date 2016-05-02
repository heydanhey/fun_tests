require 'rspec'

class RomanNumeral

  def output(number)
    result = ""

      while number >= 1000
        result += "M"
        number -= 1000
      end

      if number >= 900
        result += "CM"
        number -= 900
      end

      if number >= 500
        result += "D"
        number -= 500
      end

      if number >= 400
        result += "CD"
        number -= 400
      end

      while number >= 100
        result += "C"
        number -= 100
      end

      if number >= 90
        result += "XC"
        number -= 90
      end

      if number >= 50
        result += "L"
        number -= 50
      end

      if number >= 40
        result += "XL"
        number -= 40
      end

      while number >= 10
        result += "X"
        number -= 10
      end

      if number == 9
        result += "IX"
      elsif number >= 5
        result += "V"
        number -= 5
      end

      if number == 4
        result += "IV"
      elsif number <=3
        number.times do
          result += "I"
        end
      end
      result
  end


end

RSpec.describe RomanNumeral do
  describe '#output' do
    let(:roman_numeral){RomanNumeral.new}

    it 'should return "I" for 1' do
      expect(roman_numeral.output(1)).to eq("I")
    end

    it 'should return "II" for 2' do
      expect(roman_numeral.output(2)).to eq("II")
    end

    it 'should return "III" for 3' do
      expect(roman_numeral.output(3)).to eq("III")
    end

    it 'should return "IV" for 4' do
      expect(roman_numeral.output(4)).to eq("IV")
    end

    it 'should return "V" for 5' do
      expect(roman_numeral.output(5)).to eq("V")
    end

    it 'should return "VI" for 6' do
      expect(roman_numeral.output(6)).to eq("VI")
    end

    it 'should return "VII" for 7' do
      expect(roman_numeral.output(7)).to eq("VII")
    end

    it 'should return "VIII" for 8' do
      expect(roman_numeral.output(8)).to eq("VIII")
    end

    it 'should return "IX" for 9' do
      expect(roman_numeral.output(9)).to eq("IX")
    end

    it 'should return "X" for 10' do
      expect(roman_numeral.output(10)).to eq("X")
    end

    it 'should return "XI" for 11' do
      expect(roman_numeral.output(11)).to eq("XI")
    end

    it 'should return "XII" for 12' do
      expect(roman_numeral.output(12)).to eq("XII")
    end

    it 'should return "XIII" for 13' do
      expect(roman_numeral.output(13)).to eq("XIII")
    end

    it 'should return "XIV" for 14' do
      expect(roman_numeral.output(14)).to eq("XIV")
    end

    it 'should return "XV" for 15' do
      expect(roman_numeral.output(15)).to eq("XV")
    end

    it 'should return "XVI" for 16' do
      expect(roman_numeral.output(16)).to eq("XVI")
    end

    it 'should return "XVII" for 17' do
      expect(roman_numeral.output(17)).to eq("XVII")
    end

    it 'should return "XVIII" for 18' do
      expect(roman_numeral.output(18)).to eq("XVIII")
    end

    it 'should return "XIX" for 19' do
      expect(roman_numeral.output(19)).to eq("XIX")
    end

    it 'should return "XX" for 20' do
      expect(roman_numeral.output(20)).to eq("XX")
    end

    it 'should return "XXI" for 21' do
      expect(roman_numeral.output(21)).to eq("XXI")
    end

    it 'should return "XXII" for 22' do
      expect(roman_numeral.output(22)).to eq("XXII")
    end

    it 'should return "XXIV" for 24' do
      expect(roman_numeral.output(24)).to eq("XXIV")
    end

    it 'should return "XXV" for 25' do
      expect(roman_numeral.output(25)).to eq("XXV")
    end

    it 'should return "XXIX" for 29' do
      expect(roman_numeral.output(29)).to eq("XXIX")
    end

    it 'should return "XXX" for 30' do
      expect(roman_numeral.output(30)).to eq("XXX")
    end

    it 'should return "XXXVII" for 37' do
      expect(roman_numeral.output(37)).to eq("XXXVII")
    end

    it 'should return "XXXIX" for 39' do
      expect(roman_numeral.output(39)).to eq("XXXIX")
    end

    it 'should return "XL" for 40' do
      expect(roman_numeral.output(40)).to eq("XL")
    end

    it 'should return "XLI" for 41' do
      expect(roman_numeral.output(41)).to eq("XLI")
    end

    it 'should return "L" for 50' do
      expect(roman_numeral.output(50)).to eq("L")
    end

    it 'should return "LVII" for 57' do
      expect(roman_numeral.output(57)).to eq("LVII")
    end

    it 'should return "LXX" for 70' do
      expect(roman_numeral.output(70)).to eq("LXX")
    end

    it 'should return "LXXXV" for 85' do
      expect(roman_numeral.output(85)).to eq("LXXXV")
    end

    it 'should return "XC" for 90' do
      expect(roman_numeral.output(90)).to eq("XC")
    end

    it 'should return "XCV" for 95' do
      expect(roman_numeral.output(95)).to eq("XCV")
    end

    it 'should return "C" for 100' do
      expect(roman_numeral.output(100)).to eq("C")
    end

    it 'should return "CXLIX" for 149' do
      expect(roman_numeral.output(149)).to eq("CXLIX")
    end

    it 'should return "CLXVI" for 166' do
      expect(roman_numeral.output(166)).to eq("CLXVI")
    end

    it 'should return "CCC" for 300' do
      expect(roman_numeral.output(300)).to eq("CCC")
    end

    it 'should return "MCMXCVII" for 1997' do
      expect(roman_numeral.output(1997)).to eq("MCMXCVII")
    end

  end
end

# class Roman
#  def roman_numeral(number)
#    characters = {1000 => "M",
#                  900 => "CM",
#                  500 => "D",
#                  400 => "CD",
#                  100 => "C",
#                  90 => "XC",
#                  50 => "L",
#                  40 => "XL",
#                  10 => "X",
#                  9 => "IX",
#                  5 => "V",
#                  4 => "IV",
#                  1 => "I"}
#    numeral = []

#    characters.each do |key, value|
#      while number >= key
#          numeral << value
#          number -= key
#      end
#    end
#    numeral.join

#  end
# end