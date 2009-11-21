class FriendshipsController < ApplicationController
  before_filter :authorize
  
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Made Friendship!"
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Destroyed Friendship!"
    redirect_to root_url
  end
end
