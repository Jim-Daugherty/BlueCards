Rails.application.routes.draw do

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'products/index'

  get 'welcome/index'
  get 'bluecards/new'

  root to: 'welcome#index'
  devise_for :users
  resources :users
  resources :bluecards
end
