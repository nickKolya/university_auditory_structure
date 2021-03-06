Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :rooms
      resources :categories, only: :index
      resources :register_users
      resources :roles, only: :index do
        post 'set_role/:user_id', to: 'roles#set_role'
      end
    end
  end

  scope :api, default: { format: :json } do
    scope :v1 do
      devise_for :users, controllers: { sessions: 'api/v1/devise/sessions',
                                        registrations: 'api/v1/devise/registrations' },
                         path_names: { sign_in: :login }
    end
  end
end
