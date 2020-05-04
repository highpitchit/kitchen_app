Rails.application.routes.draw do
  resources :cake_blogs
  devise_for :users
  root to: "users#new"
  resources :users, except: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
