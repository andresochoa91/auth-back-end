Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  get '/current_user', to: 'users#show'
  put '/current_user/update', to: 'users#update'
end
