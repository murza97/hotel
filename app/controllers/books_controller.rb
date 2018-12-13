class BooksController < ApplicationController
  def guest

  end

  def new

  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    #render plain: params[:book].inspect
    @book = Book.new(book_params)

    @book.save
    redirect_to @book
  end
  private def book_params
    params.require(:book).permit(:firstname, :lastname, :number)
   end
end
