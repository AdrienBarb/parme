class Dress < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :brand, presence: true
  validates :color, presence: true
  validates :size, presence: true, inclusion: { in: %w(XS S M L) }
  validates :price, presence: true

end
