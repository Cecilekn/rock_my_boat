Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
  end

  get '/my_bookings', to: 'bookings#my_bookings', as: 'my_bookings'
  get '/bookings_owner', to: 'bookings#bookings_owner', as: 'bookings_owner'
  resources :bookings, only: [:show, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end
end
