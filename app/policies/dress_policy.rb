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

  def destroy?
    record.user == user
  end

  def belong_to_user?
    record.user == user
  end
end
