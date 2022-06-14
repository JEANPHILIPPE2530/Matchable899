class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = current_user
      @company = @user.company if @user.role == "company"
      @developer = @user.developer if @user.role == "developer"
    end
    raise
  end
end
