Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  
  get 'profile', to: 'pages#profile'
end
