Rails.application.routes.draw do


  devise_for :users
  root to: 'categories#index'
  resources :categories, only: [:index, :show] do
      resources :products, only: [:show]
    end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  resources :users, only: [:update, :edit]

  get '/cart', to: 'order_items#index'
    resources :order_items, path: '/cart/items'
    get '/cart/checkout', to: 'orders#new', as: :checkout
    post '/cart/checkout', to: 'orders#create'
    patch '/cart/checkout/', to: 'orders#update'
    get '/cart/checkout/billing', to: 'orders#billing', as: :billing


  resources :products, only: [:update, :edit]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

