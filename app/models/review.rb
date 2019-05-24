class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates :note, presence: true
end
