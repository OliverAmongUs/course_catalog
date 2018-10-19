Rails.application.routes.draw do

  # get 'users/new'
  root 'home#welcome'
  get  '/signup',  to: 'users#new'
  # post '/signup',  to: 'users#create'

  resources :instructors
  resources :subjects
  resources :courses
  resources :users

end
