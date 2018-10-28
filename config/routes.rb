Rails.application.routes.draw do
  get 'persons/profile'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'persons/profile', as: 'user_root'

  resources :sketches do
    resources :comments
  end
  end
