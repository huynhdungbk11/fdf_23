Rails.application.routes.draw do
  namespace :admin do
    root "static_pages#home"
    resources :categories
    resources :products
  end
  root "static_pages#home"
  resources :suggestions
  devise_for :users, controllers: {omniauth_callbacks: "callbacks",
    registrations: "users/registrations"}
  resources :products, only: [:index, :show]
  resources :carts
  resources :comments
  resources :products, only: [:index, :show] do
      resources :comments
    end
end
