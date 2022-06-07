class Match < ApplicationRecord
  belongs_to :offer
  belongs_to :developer
  has_many :chatrooms
end
