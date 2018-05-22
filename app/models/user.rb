class User < ApplicationRecord

  has_many :bikes
  has_many :bookings
  has_many :booked_bikes, through: :bookings, source: :bike
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#   validates :first_name, presence: true, allow_blank: false
#   validates :last_name, presence: true, allow_blank: false
end
