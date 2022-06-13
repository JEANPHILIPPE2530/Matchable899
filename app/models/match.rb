class Match < ApplicationRecord
  belongs_to :company
  belongs_to :developer
  has_many :chatrooms
end
