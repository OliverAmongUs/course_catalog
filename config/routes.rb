Rails.application.routes.draw do
  resources :instructors
  resources :subjects
  resources :courses
  root 'courses#index'
  # root 'subjects#index'
  # root 'instructors#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
