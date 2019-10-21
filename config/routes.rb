Rails.application.routes.draw do
  resources :budget_items
  resources :budget_lists
  resources :users

  post "/login", to: "auth#login"
  get '/autologin', to: "auth#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
