Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :users, only: [:index]

  root 'welcome#index'

  match ':controller(/:action(/:id))', :via => [:get, :post]

  post "lb/create"
end
