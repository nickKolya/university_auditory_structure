class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, :all if user.super_admin?

    if user.user?
      can :read, :all
      cannot :read, User
      cannot :crud, Role
    end

    if user.admin?
      can :manage, :all
      cannot :manage, User
      cannot :crud, Role
    end
  end
end
