class UserController < ApplicationController
   before_filter :authorize, :except => [:new, :create]
   
  def list
    @user = User.find(:all)
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
        redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      render :action => 'show'
    else
      render :action => 'edit'
    end
  end
  
  def delete
    @user = User.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end
