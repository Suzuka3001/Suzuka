Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :users
  resources :todos
  resources :blogs do
    delete :destroy, on: :member
  end
  root 'hello#index'
end