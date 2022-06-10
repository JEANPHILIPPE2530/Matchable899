class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_one :company
  has_one :developer
# JP
# --------- Start
  validates :email, presence: true, uniqueness: true

    def matches
      liked_user_ids = like.where(user_id: self.id).map(&:liked_user_id)
      likes_profile_user_ids = like.where(liked_user_id: self.id).map(&:user_id)

      matched_ids = liked_user_ids.select{ |id| likes_profile_user_ids.include?(id) }
      # the 3 lines up should gives us through the user ids if the profile i liked, likes us back
      # and then we can use this for further action like view full profile and messages.

      User.where(id: matched_ids)
    end
# --------- End

end
