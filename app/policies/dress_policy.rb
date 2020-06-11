class DressPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def online?
    belong_to_user?
  end

  def offline?
    belong_to_user?
  end

  def destroy?
    belong_to_user?
  end

  def belong_to_user?
    record.user == user
  end
end
