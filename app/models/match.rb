class Match < ApplicationRecord
  belongs_to :company
  belongs_to :developer
  has_one :chatroom
end
