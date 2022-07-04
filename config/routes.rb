Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resource :user, only: [:show, :edit, :update] do
    resources :events
  end
  end
