class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
  end

  # JP
  # --------- Start
  def browse
    liked_user_ids = Like.where(user_id: current_user.id).map(&:liked_user_id)
    liked_user_id << current_user.id
    @user = User.where.not(id: liked_user_ids)
  end

  def myMatch
      @matches = current_user.matches
      # +create a vue to view all matches and render @matches each do
      @users = User.where.not(id: liked_user_ids)
  end

# ================================================================================================
  def approveDeveloper
    user_id = params[:id]

      # swipe right feature
          # need to link the JS code hear
      # create like for user
          new_like = Like.new[liked_user_id: user_id_developer]

          if new_like.save
              # check if user already likes us back
              exising_like = like.where(user_id: user_id_developer, liked_user_id: current_user_id).count
              @mutual_like = existing_like > 0
          else

          end
  end

  def approveCompany
    user_id = params[:id]

    # swipe right feature
        # need to link the JS code hear
    # create like for user
        new_like = Like.new[liked_user_id: user_id]

        if new_like.save
            # check if user already likes us back
            exising_like = like.where(user_id: user_id, liked_user_id: current_user_id).count
            @mutual_like = existing_like > 0
        else

        end
  end
# ================================================================================================
  # def decline
  #     # swipe left feature

  # end

  def profile
  # ############# to render developer or company
  end

  def message
      message_id = params[:id]
      @profile = User.find(id)
      likes = Like.where(user_id: user.id, liked_user_id: id)
      @match = likes.first if likes.size > 0

      if @profile.present?
          # need to render some code for messages
      end
  end

# to continue on this
  # private

  # def set_user
  #   @user = User.find(params[:id])
  # end
  # --------- End
end
