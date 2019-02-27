class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :description, :address, presence: true

  mount_uploader :photo, PhotoUploader
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
