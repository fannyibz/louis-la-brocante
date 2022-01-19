Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :ads do
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  get 'dashboard', to: 'pages#dashboard'
end
