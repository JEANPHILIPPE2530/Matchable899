class CompaniesController < ApplicationController
  before_action :set_user

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    @company.user.role = 'company'
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def set_user
    @user = current_user
  end

  def company_params
    params.require(:company).permit(:name, :description, :address, :phone_number, :website, :zoom, :user_id)
  end
end
