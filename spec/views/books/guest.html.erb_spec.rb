require 'rails_helper'

RSpec.describe 'controller.request.path_parameters' do
  it 'matches the Rails environment by using symbols for keys' do
    %i[controller action].each { |k| expect(controller.request.path_parameters.keys).to include(k) }
  end
end

RSpec.describe 'books/guest' do
  it 'has a request.fullpath that is defined' do
    @request.path = '/books'
    expect(controller.request.path).to eq books_path
  end
end

RSpec.describe 'books/guest' do
  it 'displays the book with id: 1' do
    book = Book.create!(firstname: 'First', lastname: 'Last', number: 'Number')
    controller.extra_params = { id: book.id }
    @request.path = '/books/1'
    expect(controller.request.path).to eq book_path(book)
  end
end
