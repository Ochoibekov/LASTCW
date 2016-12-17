Rails.application.routes.draw do
  devise_for :users
  root 'organizations#index'
  resources :categories
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
