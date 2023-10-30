class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render json: @author
 
  end
  def new 
    # byebug
    @author = Author.new
  end

  def create
    # byebug
    @author = Author.new 

    if @author.save 
      render json: @author
    else
      render :new , status: :unprocessable_entity
    end 
  end

  private
  def author_params
    params.permit(:name)
  end


end
