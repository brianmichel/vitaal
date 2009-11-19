class RunController < ApplicationController
  def new
    @run = Run.new
  end
  
  def create
    @run = Run.new(params[:run])
    @run.save
    redirect_to root_url
  end
end
