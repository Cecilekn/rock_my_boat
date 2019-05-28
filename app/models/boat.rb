class Boat < ApplicationRecord
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  THEMES = ["Pirate", "James Bond", "Gatsby", "Peter Pan", "Woodstock"]
  CAPACITY = [2, 5, 10, 15, 20, 30, 40, 50]
  PRICE = (0..2000)

  validates :name, :capacity, :location, :theme, :price_per_day, :photo, presence: true
  validates :theme, inclusion: { in: THEMES }
  validates :capacity, inclusion: { in: CAPACITY }
  validates :price_per_day, inclusion: { in: PRICE }

  mount_uploader :photo, PhotoUploader
end
