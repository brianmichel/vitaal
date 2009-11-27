class EventsController < ApplicationController
  def new
    @event = Event.new
  end
 
  def create
    @event = Event.new(:user_id => params[:userID])
    @event.type = 'logged_in'
    @event.save 
  end
end
