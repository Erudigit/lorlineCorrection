Rails.application.routes.draw do
  devise_for :users
  resources :attendances
  resources :events
  resources :users
  root 'events#index'
  root to: "home#index"
end
