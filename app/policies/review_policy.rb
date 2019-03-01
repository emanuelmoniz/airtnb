class ReviewPolicy < ApplicationPolicy
  def new?
    create?
  end

  def create?
    reviews = Review.where(booking_id: record.booking, user_id: user.id)
    (reviews.empty? || review.size == 1) && (record.booking.user == user || record.booking.toilet.user == user)
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
