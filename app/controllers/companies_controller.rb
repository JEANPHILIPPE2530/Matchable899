class CompaniesController < ApplicationController
  before_action :set_user

  def index
    @companies = Company.all
        if params[:query].present?
          sql_query = " \
          companies.name @@ :query \
          OR companies.offers @@ :query \
          OR developers.first_name @@ :query \
          OR developers.last_name @@ :query \
          OR developers.skills @@ :query \
        "
          @companies = Company.joins(:developer).where(sql_query, query: "%#{params[:query]}%")
        else
          @companies = Company.all
        end
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
    params.require(:company).permit(:name, :description, :address, :phone_number, :website, :zoom, :user_id, skills: [])
  end
end
