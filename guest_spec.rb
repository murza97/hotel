require 'rails_helper'

RSpec.describe Capybara::Selector::CSSBuilder do
  let :builder do
    ::Capybara::Selector::CSSBuilder.new(@css)
  end

  context ':class' do
      it 'handles string with CSS .' do
        @css = 'a'
        selector = builder.add_attribute_conditions(class: 'well')
        expect(selector).to eq 'a.5'
      end
  end
end

#RSpec.describe "Test if root exists", type: :request do
  context 'GET #guest' do
    it 'returns a success response' do
        book = Book.create!(firstname: 'First', lastname: 'Last', number: 'Number')
        get :guest, params: {id: book.to_param}
        expect(response).to be_success
    end
  end
#end
