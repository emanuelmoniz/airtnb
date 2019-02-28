class BookingPolicy < ApplicationPolicy
  def create?
    return false if record.user == record.toilet.user || record.toilet.available == false

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
