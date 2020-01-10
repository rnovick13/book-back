class BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def create
    @book = Book.create(review_params)
    render json: @review
  end

  def show
    book = Book.find_by(id: params[:id])
    render json: book
  end

  private
    def review_params
      params.require(:book).permit(:title, :author, :cover)
    end

end
