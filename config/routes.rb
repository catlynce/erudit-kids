Rails.application.routes.draw do
  devise_for :users

  get 'dashboard', to: 'dashboard#index'
  resources 'kids'
  resources 'resources'

  root 'dashboard#index'
  # root 'pages#home'
end
