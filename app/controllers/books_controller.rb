class BooksController < ApplicationController
   def index
    @book = Book.all
    render json: @book
 
  end
  def new 
    # byebug
    @book = Book.new
  end

  def create
    # byebug
    @book = Book.new

    if @book.save 
      render json: @author
    else
      render :new , status: :unprocessable_entity
    end 
  end

  private
  def author_params
    params.permit(:title, :publish,:author_id)
  end

end
