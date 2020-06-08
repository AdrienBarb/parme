class Review < ApplicationRecord
  belongs_to :dress

  validates :rating, presence: true
  validates :description, presence: true
end
