class Book < ApplicationRecord
  
  def index
    @books = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    if book.save
      redirect_to root_path, success: "Book was successfully created."
    else　render :new
    end
  end
  
end
