class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toilet
  has_many :reviews
end
