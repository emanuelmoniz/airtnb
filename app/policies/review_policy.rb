class ReviewPolicy < ApplicationPolicy
  def new?
    create?
  end

  def create?
    true
    raise
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
