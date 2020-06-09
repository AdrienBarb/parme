class User < ApplicationRecord
  has_many :bookings
  has_many :dresses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :zip_code, presence: true, format: { with: /\A[0-9]{5}\z/ }
  validates :city, presence: true
  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A0(6|7)\s([0-9]{2}\s){3}([0-9]{2})\z/ }
end
