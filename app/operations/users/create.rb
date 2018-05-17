module Users
  class Create < BaseOperation
    ALLOWED_MODEL_NAMES = %w[user].freeze

    def call
      super

      @result = fetch_result
      self
    end

    def allowed_model_names
      ALLOWED_MODEL_NAMES
    end

    def fetch_result
      save_user || allocate_errors
      user
    end

    def save_user
      return unless user.save

      assign_role
      @status = 200
    end

    def user
      @user ||= User.new(user_params)
    end

    def assign_role
      user.add_role :user
    end

    private

    def user_params
      params.require(:user).permit(
        :first_name, :last_name, :email, :password, :password_confirmation
      )
    end

    def user_role
      @user_role ||= Role.find_by(name: :user)
    end

    def allocate_errors
      @errors << user.errors.full_messages.presence
    end
  end
end
