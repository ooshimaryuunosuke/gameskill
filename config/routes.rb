Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :tournaments
      resources :applies
      resources :details
      resources :participants
      resources :requests
      resources :reviews
      resources :profiles

      root to: "users#index"
    end
  devise_for :users
  root 'home#top'
  get "about" => "home#about"

  resources :requests, only: %i(index show new create)
  resources :profiles, only: %i(edit show update)
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
