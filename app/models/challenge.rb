class Challenge < ApplicationRecord
  has_many :uploads, dependent: :destroy

  # validates :sponsor, presence: true
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :points, presence: true
end
