class Api::V1::UsersController < Api::V1::BaseController
  def index
    authorize! :read, User
  end

  def create
    authorize! :create, User

    @user = User.new(user_params)

    if @user.save
      render :show
    else
      respond_to do |format|
        format.json { render json: @user.errors, status: 422 }
        format.xml { render xml: @user.errors, status: 422 }
      end
    end
  end

  def show
    authorize! :read, User

    @user = User.find(params[:id])
  end

  def destroy
    authorize! :destroy, User

    User.find(params[:id]).destroy

    respond_to do |format|
      format.json { render json: { message: 'User was successfully deleted' }, status: 200 }
      format.xml { render xml: { message: 'User was successfully deleted' }, status: 200 }
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :email, :password, :password_confirmation
    )
  end
end
