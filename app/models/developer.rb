class Developer < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_one_attached :photo
  # has_one_attached :document

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :biography, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :website, presence: true
  validates :github, presence: true
  validates :photo, presence: true
  SKILLS = ['Product Designer', 'Web Designer', 'UX Design ', 'Graphics Designer', 'Full-Stack Developer', 'Developer']

  include PgSearch::Model
  pg_search_scope :search_by_name_and_skills,
    against: [ :name, :skills ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
