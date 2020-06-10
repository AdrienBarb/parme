Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dresses, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  get "pages/about", to:'pages#about'


end



  # resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
  #   resource :doses, only: [:new, :create]
  # end
