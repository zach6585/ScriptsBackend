Rails.application.routes.draw do
  resources :mentees
  resources :texts
  resources :users, only: [:create]
  post '/login', to: "auths#login"
  get '/auto_login', to: "auths#auto_login"
  # get "/user_is_authed", to: "auths#user_is_authed"
#   post '/login',    to: 'sessions#create'
#   post '/logout',   to: 'sessions#destroy'
#   get '/logged_in', to: 'sessions#is_logged_in?'
#   resources :users, only: [:create, :show, :index] do 
#     resources :items, only: [:create, :show, :index, :destroy]
#  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
