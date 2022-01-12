Rails.application.routes.draw do
  resources :ads
  devise_for :users
  root to: 'pages#home'
end
