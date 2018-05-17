@user ||= locals[:object]

object @user

attributes :id, :email, :first_name, :last_name
node(:role) { @user.roles.first&.name }
