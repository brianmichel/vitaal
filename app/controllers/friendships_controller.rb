class FriendshipsController < ApplicationController
  before_filter :authorize
  
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    @event = Events.new(:data => {
      "friend_name" => User.find(:first, :conditions => {:id => @friendship.friend_id}).name,
      "created_by" => current_user.name
    }, :user_id => current_user.id, :event_type => "friend_add")
    if @friendship.save
      @event.save
      flash[:notice] = "Made Friendship!"
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def delete
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Destroyed Friendship!"
    redirect_to root_url
  end
end
