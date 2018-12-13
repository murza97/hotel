class BooksController < ApplicationController
<<<<<<< HEAD
  http_basic_authenticate_with name: "Admin", password: "89141",
  except: [:guest, :show, :create, :new]

  def guest
    @book =Book.all
  end

  def new
     @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit

    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if(@book.update(book_params))
    redirect_to @book
  else
    render 'edit'
   end
  end

  def destroy
   @book = Book.find(params[:id])
   @book.destroy
   redirect_to guest_path

=======
  def guest

  end

  def new

  end

  def show
    @book = Book.find(params[:id])
>>>>>>> 5acc5a2... version_1_1_fix
  end

  def create
    #render plain: params[:book].inspect
    @book = Book.new(book_params)

<<<<<<< HEAD
    if(@book.save)
    redirect_to @book
  else
    render 'new'
  end
=======
    @book.save
    redirect_to @book
>>>>>>> 5acc5a2... version_1_1_fix
  end
  private def book_params
    params.require(:book).permit(:firstname, :lastname, :number)
   end
<<<<<<< HEAD
  end
=======
end
>>>>>>> 5acc5a2... version_1_1_fix
