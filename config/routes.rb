Rails.application.routes.draw do
  namespace :admin do
    root "static_pages#home"
    resources :categories
  end
  root "static_pages#home"
  devise_for :users, controllers: {omniauth_callbacks: "callbacks",
    registrations: "users/registrations"}
  namespace :admin do
    resources :products
  end
end
