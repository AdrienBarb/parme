class Dress < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings

  validates :brand, presence: true
  validates :color, presence: true
  validates :size, presence: true, inclusion: { in: %w(XS S M L) }
  validates :price, presence: true

end
