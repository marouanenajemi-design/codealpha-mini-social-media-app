class CommentsController < ApplicationController
  def create
  post = Post.find(params[:post_id])
  post.comments.create(content: params[:comment][:content], user: current_user)
  redirect_to root_path
  end
end
