Rails.application.routes.draw do
  get 'welcome/index'
  get 'bluecards/new'

  root to: 'welcome#index'
  devise_for :users
  resources :users
  resources :bluecards
end
