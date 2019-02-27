class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, :description, :address, presence: true

  mount_uploader :photo, PhotoUploader
  validates :price, presence: true
end
