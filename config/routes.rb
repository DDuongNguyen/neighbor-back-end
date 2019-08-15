Rails.application.routes.draw do
  resources :messages
  resources :tasks
  resources :events
  resources :invites
  resources :users
  post '/login', to: 'auth#create'
  get '/auth', to: 'auth#persist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
