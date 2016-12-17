Rails.application.routes.draw do
  resources :orgcomments
  post '/rate' => 'rater#create', :as => 'rate'
  ActiveAdmin.routes(self)
  devise_for :users
  root 'organizations#index'
  resources :categories
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
