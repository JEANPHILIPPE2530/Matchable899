class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    if params[:query].present?
      sql_query = " \
      companies.name @@ :query \
          "
      @companies = Company.where(sql_query, query: "%#{params[:query]}%")
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
    @company.user.update(role: "company")
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :address, :phone_number, :website, :zoom, :user_id, :photo, skills: [])
  end
end
