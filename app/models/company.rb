class Company < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_one_attached :photo
  has_many :chatrooms

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 25 }
  validates :address, presence: true
  validates :website, presence: true
  validates :zoom, presence: true
  validates :phone_number, presence: true


  include PgSearch::Model
  pg_search_scope :search_by_name_and_offer,
    against: [ :name, :offer ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
