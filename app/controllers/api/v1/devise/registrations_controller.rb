class Api::V1::Devise::RegistrationsController < Devise::RegistrationsController
  skip_authorization_check

  def sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    super
  end
end
