class Company < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :name, presence: true
  validates :description, presence: true
  validates :name, presence: true
  validates :website, presence: true
  validates :zoom, presence: true
  validates :phone_number, presence: true
end
