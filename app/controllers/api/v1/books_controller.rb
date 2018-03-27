class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books, status: 200
  end

  def create
    @book = Book.create(book_params)
    render json: @book, status: 201
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      render json: {bookId: book.id}, status: 200
    end
  end

  private
  def book_params
    params.require(:book).permit(:title)
  end

end
