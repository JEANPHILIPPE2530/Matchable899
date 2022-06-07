class Offer < ApplicationRecord
  belongs_to :company
  has_many :matches

  validates :title, presence: true
  validates :description, presence: true
end
