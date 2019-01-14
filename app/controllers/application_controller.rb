class ApplicationController < ActionController::Base
  before_action :set_book
  def set_book
    @book = Book.all
  end
  protect_from_forgery with: :exception
end
