require 'spec_helper'


describe ValidationsController do
  describe '#last_digit_valid?' do
    it 'should return a boolean' do
      expect(ValidationsController.new.last_digit_valid?(9782895406976)).to eq(true||false)
    end

    it 'should return true if the last digit is valid ISBN' do
      expect(ValidationsController.new.last_digit_valid?(9782895406976)).to eq(true)
    end
  end
end
