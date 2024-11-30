Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get 'about', to: 'pages#about'
  resources :pages
  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  resources :portfolios
  # get "portfolios", to: 'portfolios#index'

  # get "/portfolios/new", to: 'portfolios#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
