Rails.application.routes.draw do
  root to: 'homes#show', via: :get
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]
end
