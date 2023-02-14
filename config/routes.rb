Rails.application.routes.draw do
  root 'index#index'
  get '/team', to: 'team#team_method'
  get '/contact', to: 'contact#contact_method'
  get '/welcome/:id', to: 'welcome#first_name'
  get '/welcome', to: 'welcome#display_welcome'
  get '/show/:gossip_id', to: 'show#show_gossip'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
