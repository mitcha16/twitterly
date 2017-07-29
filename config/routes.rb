Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  get 'pages/about'

  root 'pages#home'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end
