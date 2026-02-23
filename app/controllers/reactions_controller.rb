class ReactionsController < ApplicationController
    before_action :authenticate_user!

  def create
    reactable = find_reactable
    reaction = current_user.reactions.find_or_initialize_by(reactable: reactable)

    reaction.kind = params[:kind]
    reaction.save

    redirect_back fallback_location: root_path
  end

  private

  def find_reactable
    if params[:post_id]
      Post.find(params[:post_id])
    elsif params[:comment_id]
      Comment.find(params[:comment_id])
    end
  end
end
