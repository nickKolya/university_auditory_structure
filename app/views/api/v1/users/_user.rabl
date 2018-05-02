object current_user
attributes :id, :email, :first_name, :last_name
node(:token) { current_user.generate_jwt }
