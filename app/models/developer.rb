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
  SKILLS = ['Product Designer', 'Web Designer', 'UX Design ', 'Graphics Designer', 'Full-Stack Developer', 'Developer']

  def name
    return "#{first_name} #{last_name}"
  end
end
