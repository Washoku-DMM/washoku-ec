Rails.application.routes.draw do
  devise_for :users


  namespace :admins do
    resources :genres, only: [:index, :create, :update, :edit]
    resources :orders, only: [:index, :show, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :products
    devise_for :admins
    get 'homes/top'
  end

  resources :genres, only: [:index]

  get 'homes/about'
  root 'homes#top'

  resources :orders, only: [:index, :show, :create, :update]

  resources :products

  resources :customers, only: [:show, :edit, :update, :destroy]

  resources :cart_products, only: [:create, :destroy, :index]

  resources :deliveries, except: [:show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
