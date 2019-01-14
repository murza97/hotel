require 'rails_helper'

RSpec.describe 'books/new' do
  it 'infers the controller path' do
    expect(controller.request.path_parameters[:controller]).to eq('books')
    expect(controller.controller_path).to eq('books')
  end
  it 'infers the controller action' do
    expect(controller.request.path_parameters[:action]).to eq('new')
  end
end
