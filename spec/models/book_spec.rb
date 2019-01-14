require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validation tests' do
    it 'ensures first name presence' do
      book = Book.new(firstname: 'First').save
      expect(book).to eq(false)
    end
    it 'ensures last name presence' do
      book = Book.new(lastname: 'Last').save
      expect(book).to eq(false)
    end
    it 'ensures number presence' do
      book = Book.new(number: 'Number').save
      expect(book).to eq(false)
    end
    it 'should save successfully' do
      book = Book.new(firstname: 'First', lastname: 'Last', number: 'Number').save
      expect(book).to eq(true)
    end
  end
end
