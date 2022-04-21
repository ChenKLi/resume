class ResumePolicy < ApplicationPolicy

  def index?
    internal_users || vendor
  end
  
  def new?
    create?
  end
  
  def create?
    interviewee
  end

  def edit?
    update?
  end

  def update?
    internal_users || user
  end

  def destroy
    user
  end
  

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
