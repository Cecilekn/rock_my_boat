class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many :boats, dependent: :destroy
end
