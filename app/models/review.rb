class Review < ApplicationRecord
  belongs_to :dress, dependent: :destroy
  belongs_to :user

  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :description, presence: true
end
