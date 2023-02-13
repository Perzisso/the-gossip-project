Rails.application.routes.draw do
  get 'welcome/welcome'
  root 'index#index'
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'
  get '/welcome', to: 'welcome#welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
