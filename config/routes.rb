Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :update]
  root to: 'users#new'
end
