class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user

  private

  def set_user
    if user_signed_in?
      @user = current_user
      @company = @user.company if @user.role == "company"
      @developer = @user.developer if @user.role == "developer"
    end
  end
end
