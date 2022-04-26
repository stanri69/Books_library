Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users, only: [:show]
  get 'books/index'
  resources :books
  root 'books#index'
end
