Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "splash#index"

  get 'splash/index', to: 'splash#index', as: 'splash'
  get 'splash/landing', to: 'splash#landing', as: 'landing'

  resources :operations, only: [:index, :new, :create, :edit, :update, :destroy]
end
