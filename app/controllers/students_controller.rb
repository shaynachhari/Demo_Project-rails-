class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  # byebug

  # use show 
  def show 
    @student = Student.find(params[:id])
    # render @student
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
      ### add mailer
      TestingMailer.create_ac(@student).deliver_now
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
    if @student.update(article_params) 
    redirect_to student_path(@student)
    else
      render @student.errors
    end
  end

  #delete with the help of destroy
  def destroy 
  @student = Student.find(params[:id])
  # @student.destroy
  if @student.destroy
  redirect_to student_path
  TestingMailer.delete_ac(@student).deliver_now
  else
     render @student.errors
  end
 end

  private 
  def article_params
    params.require(:student).permit(:name, :roll, :address, :email)
  end 
end




  

    

