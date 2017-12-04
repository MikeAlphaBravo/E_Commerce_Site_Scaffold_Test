Rails.application.routes.draw do
  root 'pages#index'

  resources :order_items
  resources :orders
  resources :products
  resources :accounts
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
