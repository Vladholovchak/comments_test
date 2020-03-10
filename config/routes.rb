Rails.application.routes.draw do
  root to: "shops#index"

  devise_for :users

  resources :shops do
    resources :comments
  end
  resources :firms do
    resources :comments
  end
  resources :taxis do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  resources :users do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
