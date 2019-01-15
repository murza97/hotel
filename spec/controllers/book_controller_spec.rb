require 'rails_helper'
RSpec.describe BooksController, type: :controller do
  context 'GET #show' do
    it 'returns a success response' do
      book = Book.create!(firstname: 'First', lastname: 'Last', number: 'Number')
      get :show, params: { id: book.to_param }
      expect(response.success?).to be(true)
    end
  end

  context 'GET #guest' do
    it 'returns a success response' do
      book = Book.create!(firstname: 'First', lastname: 'Last', number: 'Number')
      get :guest, params: { id: book.to_param }
      expect(response.success?).to be(true)
    end
  end
end
