class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  # use show 
  def show 
    @student = Student.find(params[:id])
  end

  # use new method
  def new 
    
    @student = Student.new
  end

  # use create method 
  def create
    @student = Student.new(article_params)

    if @student.save
      redirect_to @student
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  # this is use edit(only update but noe data update)
  def edit 
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student = update(article_params) 
    redirect_to student_path(@student)
  end


  private 
  def article_params
    params.require(:student).permit(:name, :roll, :address, :email)
  end 
end




  

    

