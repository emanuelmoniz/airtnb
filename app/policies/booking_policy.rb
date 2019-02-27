class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
