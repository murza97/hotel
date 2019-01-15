require 'rails_helper'

RSpec.describe 'BooksController' do
  it 'matches the Rails environment by using symbols for keys' do
    %i[controller action].each { |k| expect(controller.request.path_parameters.keys).to include(k) }
  end
end

RSpec.describe 'books/guest' do
  let(:request.path) { '/books' }

  it 'has a request.fullpath that is defined' do
    expect(controller.request.path).to eq books_path
  end
end

RSpec.describe 'books/guest' do
  it 'displays the book with id: 1' do
    let(:request.path) { '/books/1' }

    book = Book.create!(firstname: 'First', lastname: 'Last', number: 'Number')
    controller.extra_params = { id: book.id }
    expect(controller.request.path).to eq book_path(book)
  end
end
