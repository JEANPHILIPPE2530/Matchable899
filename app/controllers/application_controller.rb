class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  private

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end
end
