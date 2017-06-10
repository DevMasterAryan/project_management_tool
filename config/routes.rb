Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'session/new', to: "session#new"
  get '/forgetpassword', to: "forgot_password#new"
  post '/forgetpassword', to: "forgot_password#find_user"
  resources :users
  resources :session

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
