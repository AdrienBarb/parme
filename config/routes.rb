Rails.application.routes.draw do
  devise_for :users

  get "dresses/my-dresses", to: 'dresses#my_dresses', as: 'my_dresses'
  # patch "dresses/:id/online", to: 'dresses#online', as: 'online'
  # patch "dresses/:id/offline", to: 'dresses#offline', as: 'offline'
  get "pages/about", to:'pages#about'

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dresses, only: [:index, :show, :new, :update, :create, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]

    patch :offline, on: :member
    patch :online, on: :member
  end



end



  # resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
  #   resource :doses, only: [:new, :create]
  # end
