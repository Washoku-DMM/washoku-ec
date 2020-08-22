Rails.application.routes.draw do

  namespace :customers do
  devise_for :customers
  end

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

    resources :orders, only: [:index, :show, :create, :new]

    post 'orders/confirm'

    get 'orders/ordercomplete'

    resources :products

    resources :customers, only: [:show, :edit, :update, :destroy]

    resources :cart_products, only: [:index, :create, :update, :destroy] do
      collection do
          delete 'destroy_all'
      end
    end

    resources :deliveries, except: [:show]




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
