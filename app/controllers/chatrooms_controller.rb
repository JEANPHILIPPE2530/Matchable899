class ChatroomsController < ApplicationController
  def index
    if @user.role == "developer"
      @chatrooms = @user.developer.matches.map { |match| match.chatroom }
    elsif @user.role == "company"
      @chatrooms = @user.company.matches.map { |match| match.chatroom }
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @match = @chatroom.match
  end
end
