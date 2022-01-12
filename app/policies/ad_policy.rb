class AdPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    ad_owner?
  end

  def update?
    ad_owner?
  end

  def destroy?
    ad_owner?
  end

  private

  def ad_owner?
    record.user == user
  end
end