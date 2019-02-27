class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  def my_toilets?
    true
  end

  def used_toilets?
    true
  end
end
