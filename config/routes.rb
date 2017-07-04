Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles # new article path

  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new] # all the routes except new user
end
