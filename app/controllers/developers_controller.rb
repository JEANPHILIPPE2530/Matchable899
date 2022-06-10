class DevelopersController < ApplicationController

  def show
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(developer_params)
    @developer.user = current_user
    @developer.user.update(role: "developer")
    if @developer.save
      redirect_to developer_path(@developer)
    else
      render :new
    end
  end

  private

  def developer_params
    params.require(:developer).permit(:first_name, :last_name, :biography, :address, :phone_number, :website, :zoom, :github, :user_id, :photo, :document, skills: [])
  end
end
