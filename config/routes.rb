Rails.application.routes.draw do
  devise_for :users
  get 'books/index'
  resources :books
  root 'books#index'
end
