class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  NOTES = [1, 2, 3, 4, 5]

  validates :note, presence: true, inclusion: { in: NOTES }
end
