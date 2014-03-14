Scheduler::Application.routes.draw do
  root :to => "home#index"

  # Routes to current page
  # resources :client_views, only: [:show]
  #resources :employees

  # Admin resource
  resources :employees
end
