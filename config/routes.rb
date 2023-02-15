Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'gossips#index'
  get '/team', to: 'team#team_method'
  get '/contact', to: 'contact#contact_method'
  get '/welcome/:id', to: 'welcome#first_name'
  get '/welcome', to: 'welcome#display_welcome'
  resources :gossips
  resources :users
end
