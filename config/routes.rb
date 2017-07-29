Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  get 'pages/about'

  root 'pages#home'

  resources :users
end
