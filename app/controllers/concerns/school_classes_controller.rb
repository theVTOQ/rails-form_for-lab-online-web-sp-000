class SchoolClassesController < ApplicationController
  def show
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    #binding.pry
    @school_class = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(post_params(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
end
