class FollowsController < ApplicationController
  def create
  user = User.find(params[:followed_id])
  current_user.followed_relationships.create(followed: user)
  redirect_back fallback_location: root_path
  end

def destroy
  follow = Follow.find(params[:id])
  follow.destroy
  redirect_back fallback_location: root_path
end
end
