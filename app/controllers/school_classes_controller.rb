class SchoolClassesController < ApplicationController
  def show
  end

  def edit
    @school_class = Student.find(params[:id])
  end

  def new
    @school_class = Student.new
  end

  def create
    @school_class = Student.create(post_params(:first_name, :last_name))
    redirect_to student_path(@school_class)
  end

  def update
    @school_class = Student.find(params[:id])
    @school_class.update(post_params(:first_name, :last_name))

    redirect_to school_class_path(@school_class)
  end

  def post_params(*args)
    params.require(:student).permit(*args)
  end
end
