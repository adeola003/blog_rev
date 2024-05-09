Rails.application.routes.draw do
  resources :blogs
  get "portfolios", to: 'portfolios#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
