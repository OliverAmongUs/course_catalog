Rails.application.routes.draw do
  get 'home/welcome'

  resources :instructors
  resources :subjects
  resources :courses
  root 'home#welcome'
  # root 'subjects#index'
  # root 'instructors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
