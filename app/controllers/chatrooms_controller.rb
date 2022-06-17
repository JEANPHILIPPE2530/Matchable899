class ChatroomsController < ApplicationController
  def index
    if @user.role == "developer"
      @chatrooms = @user.developer.chatrooms
    elsif @user.role == "company"
      @chatrooms = @user.company.chatrooms
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @developer = @chatroom.developer
    @company = @chatroom.company
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    if current_user.role == "developer"
      @company = Company.find(params[:company_id])
      @chatroom = Chatroom.new(company_id: @company.id, developer_id: current_user.developer.id)
    elsif current_user.role == "company"
      @developer = Developer.find(params[:developer_id])
      @chatroom = Chatroom.new(developer_id: @developer.id, company_id: current_user.company.id)
    end
    if @chatroom.save!
      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/index"
    end
  end
end
