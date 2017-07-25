Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/help'

  root 'pages#home'
end
