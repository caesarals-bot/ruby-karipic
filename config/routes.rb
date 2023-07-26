Rails.application.routes.draw do
  resources :pics
  resources :cats
  get 'home/index'
  devise_for :users
  resources :comments, only: [:create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
