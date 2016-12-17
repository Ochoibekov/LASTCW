Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  ActiveAdmin.routes(self)
  devise_for :users
  root 'organizations#index'
  resources :categories
  resources :organizations do
    resources :orgcomments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
