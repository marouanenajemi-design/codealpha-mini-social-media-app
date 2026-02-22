class PostsController < ApplicationController
  def index
  @posts = Post.all.order(created_at: :desc)
  @post = Post.new
  end

def create
  current_user.posts.create(post_params)
  redirect_to root_path
end

private

def post_params
  params.require(:post).permit(:content)
end
end
