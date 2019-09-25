Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cloths, only: [:index, :show, ] do
    resources :orders, only: [:new, :create]
  end
  resources :skirts, only: [:index, :show] do
    resources :orders, only: [:new]
    post '/orders', to: 'orders#create_skirt'
  end
  resources :orders, only: [:show]

  resources :users, only: [:show, :edit, :update, :destroy]

  get 'dashboard/bag', to: 'users#user_bag'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
