class Developer < ApplicationRecord
  belongs_to :user
  has_many :matches

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :biography, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :website, presence: true
  validates :github, presence: true
end
