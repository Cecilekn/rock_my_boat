class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  THEMES = ["Pirate", "James Bond", "Gatsby", "Peter Pan", "Woodstock"]

  validates :name, :capacity, :location, :theme, :price_per_day, :photo, presence: true
  validates :theme, inclusion: { in: THEMES }

  mount_uploader :photo, PhotoUploader
end
