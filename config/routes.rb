Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  get 'books/index'
  resources :books
  root 'books#index'
end
