Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'pages#home'
  
  get 'profile', to: 'pages#profile'

  resources :students, :only => [:index]
  resources :teachers, :only => [:index]

  resources :exams  
  resources :student_answers, :only => [:create]
end
