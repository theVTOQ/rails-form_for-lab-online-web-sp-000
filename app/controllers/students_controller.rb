class StudentsController < ApplicationController
  def show
  end

  def edit
  end
  
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(post_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end