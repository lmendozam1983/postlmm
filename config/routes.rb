Rails.application.routes.draw do
  resources :comments
  resources :news
  devise_for :users

  get 'render/index'
  get "up" => "rails/health#show", as: :rails_health_check
  root "render#index"


  #root 'home#index' 
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
