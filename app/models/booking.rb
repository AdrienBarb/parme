class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dress, dependent: :destroy

  validates :start_rent_at, presence: true
  validates :end_rent_at, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_rent_at.blank? || start_rent_at.blank?

    if end_rent_at < start_rent_at
      errors.add(:end_rent_at, "must be after the start date")
    end
  end
end
