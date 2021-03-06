class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :bookers, through: :bookings, source: :user
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :category, presence: true
  # validates :size, presence: true
  # validates :address, presence: true
  # validates :price, presence: true, numericality: true

end


# inclusion: { in: %w(road mountain hybrid city lady cruiser cargo)}
# bike.renters
