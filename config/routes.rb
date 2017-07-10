Rails.application.routes.draw do
  resources :themes
  root to: 'pages#index'

  devise_for :users

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos
  resources :events do
      resources :bookings, only: [:create]
    end

  namespace :api do
   resources :events, except: [:destroy]
 end
end
