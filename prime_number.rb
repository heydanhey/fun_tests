require 'rspec'

class PrimeNumber

  def is_prime?(number)
    if number == 1
      return false
    else
      i = number - 1
      while i > 1
        if number % i == 0
          return false
        else
          i -= 1
        end
      end
    end
    return true
  end


  def highest_prime_number_under(number)

    until is_prime?(number)
      number -=1
    end
    return number

  end

end

RSpec.describe PrimeNumber do
  describe '#is_prime?' do
    let(:prime_number){PrimeNumber.new}

    it 'should return "false" if given 1' do
      expect(prime_number.is_prime?(1)).to eq(false)
    end

    it 'should return "true" if given 2' do
      expect(prime_number.is_prime?(2)).to eq(true)
    end

    it 'should return "true" if given 3' do
      expect(prime_number.is_prime?(3)).to eq(true)
    end

    it 'should return "false" if given 4' do
      expect(prime_number.is_prime?(4)).to eq(false)
    end

    it 'should return "true" if given 5' do
      expect(prime_number.is_prime?(5)).to eq(true)
    end
  end

  describe '#highest_prime_number_under' do
    let(:prime_number){PrimeNumber.new}

    it 'should return "7" if given 10' do
      expect(prime_number.highest_prime_number_under(10)).to eq(7)
    end

    it 'should return "839" if given 850' do
      expect(prime_number.highest_prime_number_under(850)).to eq(839)
    end

    it 'should return "1699" if given 1700' do
      expect(prime_number.highest_prime_number_under(1700)).to eq(1699)
    end
  end
end