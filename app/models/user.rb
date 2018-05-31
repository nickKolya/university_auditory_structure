class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, uniqueness: { case_sensitive: false },
                       presence: true,
                       allow_blank: false

  def generate_jwt
    ::JWT.encode({ id: id,
                exp: 60.days.from_now.to_i },
               Rails.application.secrets.secret_key_base)
  end

  def super_admin?
    has_role? :super_admin
  end

  def admin?
    has_role? :admin
  end

  def user?
    has_role? :user
  end
end
