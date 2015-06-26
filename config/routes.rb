Rails.application.routes.draw do

  root to: 'welcome#index'

  devise_for :admins
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  devise_for :users
  resources :users
  resources :bluecards

  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'
  get 'welcome/index'
  get 'bluecards/show'
  get 'bluecards/new'


end
