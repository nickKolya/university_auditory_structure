class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, :all if user.super_admin?

    if user.moderator?
      can :read, :all
      cannot :read, User
    end

    if user.admin?
      can :manage, :all
      cannot :manage, User
    end
  end
end
