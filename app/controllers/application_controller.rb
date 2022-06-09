class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user

  private

  def set_user
    @user = current_user if user_signed_in?
  end
end
