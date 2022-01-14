Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :ads
  get 'dashboard', to: 'pages#dashboard'
end
