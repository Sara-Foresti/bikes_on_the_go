Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bikes do
    resources :bookings
  end
  get '/dashboard', to: 'pages#dashboard', :defaults => { bike: true }
  get '/bookings/:id/accept', to: 'bookings#accept', as: :accept
  get '/bookings/:id/decline', to: 'bookings#decline', as: :decline
end
