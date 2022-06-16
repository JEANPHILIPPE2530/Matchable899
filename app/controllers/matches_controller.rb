class MatchesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    # if params[:query].present?
    # sql_query = " \
      # developers.first_name @@ :query \
      # OR developers.last_name @@ :query \
      # "
      # sql_query_company = " \
          #companies.name @@ :query \
        #"
        #@matches = Developer.where(sql_query, query: "%#{params[:query]}%")
        #@matches_company = Company.where(sql_query_company, query: "%#{params[:query]}%")
      #else
        # @matches = Developer.all
  @developers = Developer.all
  @companies = Company.all
  if current_user.role == "company"
    @company = Company.find(params[:company_id])
  elsif current_user.role == "developer"
    @developer = Developer.find(params[:developer_id])
  end
  @matches = Match.new
      #end
  end

  def create
    @user.role == "developer" ? @developer = Developer.find(params[:developer_id]) : @developer = Developer.find(params[:match][:developer_id])
    @user.role == "developer" ? @company = Company.find(params[:match][:company_id]) : @company  = Company.find(params[:company_id])

    if @user.role == "company"

      @matches = Match.create!(developer_id: @developer.id, company_id: @company.id)
      respond_to do |format|
        if @matches.save
          format.html { redirect_to company_matches_path(@company) }
          # format.json # Follow the classic Rails flow and look for a create.json view
        else
          format.html { render "match/create" }
          # format.json # Follow the classic Rails flow and look for a create.json view
        end
      end

    elsif @user.role == "developer"
      @matches = Match.create!(company_id: @company.id, developer_id: @developer.id)
      respond_to do |format|
        if @matches.save
          format.html { redirect_to developer_matches_path(@developer) }
          # format.json # Follow the classic Rails flow and look for a create.json view
        else
          format.html { render "match/create" }
          # format.json # Follow the classic Rails flow and look for a create.json view
        end
      end
    end
  end

  private

  def match_params
    params.require(:user).permit(:user_id)
  end
end

#   # JP
#   # --------- Start
#   def browse
#     liked_user_ids = Match.where(developer_id: current_user.id).map(&:liked_user_id)
#     @user = User.where.not(id: liked_user_ids)
#   end

#   def my_match
#       @matches = current_user.matches
#       # +create a vue to view all matches and render @matches each do
#       @users = User.where(id: liked_user_ids)
#   end

# # ================================================================================================
#   def approve_developer
#     # user_id = params[:id]

#       # swipe right feature
#           # need to link the JS code hear
#       # create like for user
#           new_like = Match.new(developer_id:current_user.id)

#           # @offer = params[:id]
#           # @offer.company_id
#           if new_like.save
#               # check if user already likes us back
#               existing_like = Match.where(developer_id:current_user.id, company_id: @offer.company_id).any?  #any?
#               @mutual_like = existing_like == true
#           else

#           end
#   end

#   def approve_company
#     user_id = params[:id]

#     # swipe right feature
#         # need to link the JS code hear
#     # create like for user
#         new_like = Match.new[liked_user_id: user_id]

#         if new_like.save
#             # check if user already likes us back
#             existing_like = Match.where(user_id: user_id, liked_user_id: current_user_id).any?
#             @mutual_like = existing_like == true
#         else

#         end
#   end
# # ================================================================================================
#   # def decline
#   #     # swipe left feature
#     # @user= User.where.not(id: liked_user_ids)
#   # end

#   def profile
#   # ############# to render developer or company
#   end

#   def message
#       message_id = params[:id]
#       @profile = User.find(id)
#       likes = Match.where(user_id: user.id, liked_user_id: id)
#       @match = likes.first if likes.size > 0

#       if @profile.present?
#           # need to render some code for messages
#       end
#   end

# # to continue on this
#   # private

#   # def set_user
#   #   @user = User.find(params[:id])
#   # end
#   # --------- End
# end
