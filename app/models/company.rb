class Company < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: { minimum: 25 }
  validates :address, presence: true
  validates :website, presence: true
  validates :phone_number, presence: true
end
