Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "splash#index"
  resources :groups, only: [:index, :new, :create] do
    resources :operations, only: [:index]
  end

  get 'splash/index', to: 'splash#index', as: 'splash'
end
