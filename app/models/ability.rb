class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all if user.moderator?
    can :manage, :all if user.super_admin?
    can :read, :all if user.admin?
  end
end
