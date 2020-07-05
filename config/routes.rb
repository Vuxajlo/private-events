Rails.application.routes.draw do
  root 'users#index'
  resources :users
  get 'login', to: 'user_sessions#new'   
  post 'login', to: 'user_sessions#create'
  get 'logout', to: 'user_sessions#destroy'   
  
end

