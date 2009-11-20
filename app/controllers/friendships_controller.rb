class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Made Friendship!"
      redirect_to root_url
    else
      render :action => 'new'
  end
  
  def destroy
    @friendship = current_user.Friendship.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Destroyed Friendship!"
    redirect_to root_url
  end
end
