Rails.application.routes.draw do
  get 'users/new'

  get 'pages/home'

  get 'pages/help'

  get 'pages/about'

  root 'pages#home'
end
