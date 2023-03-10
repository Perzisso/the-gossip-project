Rails.application.routes.draw do
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'gossips#index'
  get '/team', to: 'team#team_method'
  get '/contact', to: 'contact#contact_method'
  get '/welcome/:id', to: 'welcome#first_name'
  get '/welcome', to: 'welcome#display_welcome'
  delete 'logout'  => 'sessions#destroy'
  resources :gossips
  resources :users
  resources :cities, only: [:show]
  resources :tags
  resources :sessions, only: [:new, :create, :destroy]
end