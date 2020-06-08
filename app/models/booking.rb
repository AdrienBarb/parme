class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dress

  validates :start_rent_at, presence: true
  validates :end_rent_at, presence: true

end
