Rails.application.routes.draw do
  resources :events
  resources :personas
  devise_for :users
  root to: 'events#index'
end
