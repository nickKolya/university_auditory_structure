node :user do
  partial('api/v1/users/user', object: current_user)
end
