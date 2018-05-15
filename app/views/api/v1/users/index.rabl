collection User.all, root: :users, object_root: false

attributes :id, :email, :first_name, :last_name
node(:role) { |user| user.roles.first&.name }
