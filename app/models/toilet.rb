class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader
  validates :price, presence: true
end
