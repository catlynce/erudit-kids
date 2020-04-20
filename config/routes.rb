Rails.application.routes.draw do
  get 'share/index'
  get 'share/new'
  get 'share/create'
  devise_for :users

  get 'dashboard', to: 'dashboard#index'

  # resources 'share', only: ['index', 'new', 'create']
  resources 'shares', only: ['index', 'new', 'create']

  resources 'kids'
  resources 'resources'

  root 'dashboard#index'
  # root 'pages#home'
end
