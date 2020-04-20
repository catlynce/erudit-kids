Rails.application.routes.draw do
  get 'share/index'
  get 'share/new'
  get 'share/create'
  devise_for :users

  get 'dashboard', to: 'dashboard#index'
  get 'share/new', to: 'share#new'

  resources 'kids'
  resources 'resources'

  root 'dashboard#index'
  # root 'pages#home'
end
