class MainController < ApplicationController
  before_action :set_book
  def set_book
    @book = Book.all
  end

  def index; end

  def truth
    true
  end
end
