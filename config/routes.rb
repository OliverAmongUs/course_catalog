Rails.application.routes.draw do

  get '/enrollment',  to: 'enrollment#new'
  post '/enrollment', to: 'enrollment#new'

  # get 'users/new'
  root 'home#welcome'
  get  '/signup',  to: 'users#new'
  # post '/signup',  to: 'users#create'

  get '/search', to: 'search#new'
  # post '/search', to: 'search#new'
  # get '/search_result', to: 'search#show'


  # get '/search_result', to: 'search_result#new'
  # get '/course', to: 'course#show'
  resources :instructors
  resources :subjects
  resources :courses
  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'



end
