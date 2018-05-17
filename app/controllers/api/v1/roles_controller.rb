class Api::V1::RolesController < Api::V1::BaseController
  def index
    authorize! :read, Role

    @roles = Role.all
  end

  def set_role
    authorize! :update, User

    role = Role.find(params[:role_id])
    user = User.find(params[:user_id])

    user.add_role role.name

    render_custom_response(
      "User #{user.first_name} was successfully granted by '#{role.name.capitalize}' role",
      200
    )
  end
end
