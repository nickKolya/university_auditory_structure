class Api::V1::RegisterUsersController < Api::V1::BaseController
  def index
    authorize! :read, User
  end

  def create
    op = ::Users::Create.new(User, params)

    authorize! :create, op.model_class
    op.call

    return render_custom_response(op.errors, op.status) if op.errors.any?

    render :show, locals: { object: op.result }
  end

  def show
    authorize! :read, User

    @user = User.find(params[:id])
  end

  def destroy
    authorize! :destroy, User

    User.find(params[:id]).destroy

    render_custom_response('User was successfully deleted', 200)
  end
end
