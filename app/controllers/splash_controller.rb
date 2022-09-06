class SplashController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if user_signed_in?
      redirect_to group_index_path
    end
  end
end
