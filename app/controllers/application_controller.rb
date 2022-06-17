class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user

  def default_url_options
    { host: ENV["www.matchable.shop"] || "localhost:3000" }
  end
  # before_action :set_chatroom
  private

  # def set_chatroom
  #   @chatroom = Chatroom.find_by(id: 4)#to_do_definir_comment_
  # end

  def set_user
    if current_user
      @user = current_user
      @company = @user.company if @user.role == "company"
      @developer = @user.developer if @user.role == "developer"
    end
  end
end
