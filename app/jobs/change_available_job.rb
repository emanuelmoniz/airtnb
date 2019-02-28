class ChangeAvailableJob < ApplicationJob
  queue_as :default

  def perform(booking_id)
    sleep 10
    booking = Booking.find(booking_id)
    booking.toilet.update(available: true)
  end
end
