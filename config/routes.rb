Rails.application.routes.draw do


  get 'tasks/index'

  get 'tasks/edit'

  get 'tasks/destroy'

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :users

  root 'welcome#index'

  match ':controller(/:action(/:id))', :via => [:get, :post]

  post "lb/create"
end
