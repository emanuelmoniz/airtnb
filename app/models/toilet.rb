class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :address, presence: true

  mount_uploader :photo, PhotoUploader
end
