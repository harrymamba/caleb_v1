Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    # For Login Authentication
    resource :login, only: [:create], controller: :sessions

    resources :roles
    resources :schools
  end

end
