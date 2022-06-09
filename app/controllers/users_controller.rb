class UsersController < ApplicationController
  def show
    @user = current_user
    @company = User.find(params[:id]).company
  end
end
