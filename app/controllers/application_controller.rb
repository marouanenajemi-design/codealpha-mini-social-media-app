class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
    posts_path   # ← your real home page
    end
    def after_sign_out_path_for(resource_or_scope)
  new_user_session_path
    end
end
