class CourseController < ApplicationController
  def list
    @course = Course.find(:all)
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def new
    @course = Course.new
  end
  
  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:notice] = "The course has been successfully created!"
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      render :action => 'show'
    else
      render :action => 'edit'
    end
  end
  
  def delete
    Course.find(params[:id]).destroy
    flash.now[:notice] = "Course has been successfully deleted!"
    redirect_to :action => 'list'
  end  
end