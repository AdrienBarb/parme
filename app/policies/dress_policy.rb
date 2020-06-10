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

  def can_book?
    record.user != user
  end

end
