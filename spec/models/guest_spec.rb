require 'rails_helper'

RSpec.describe 'books/guest.html.erb', type: :view do
  before { visit 'http://localhost:3000/guest' }

  it 'class well exists' do
    expect(page.has_css?('.container')).to be true
  end
end

# it "class well exists" do
# SELECT "books".* FROM "books"
# within ('layouts/application') do
# render
# end
# expect(page.has_css?('.well')).to be true
# end
# ActiveRecord::Base.logger = Logger.new(STDOUT) if defined?(ActiveRecord::Base)
