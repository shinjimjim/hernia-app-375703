Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'events#index'

  #一般ユーザー用のルーティング
  resources :users
  resources :events

  #管理者用のルーティング
  namespace :admin do
    resources :users do
      member do
        get :events
      end
      resources :events, only: :show
    end
  end
end
