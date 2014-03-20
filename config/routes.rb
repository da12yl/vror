Scheduler::Application.routes.draw do
  root to: "home#index"

  devise_for :users, :controllers => { :registrations => "admin/users" }, 
  
              # Define our own links, skip devise generated routes
              :skip => [:registrations, :sessions]

  
  as :user do
    # Don't allow access to the sign_up link
    match 'users/sign_up', to: redirect('/'), via: [:get, :post]

    # remove User:: scope from login links
    get    'login' => 'devise/sessions#new', as: :new_user_session
    post   'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  #
  # Default resources
  #
  resources :users do
    resources :tips
  end
  resources :tips, only: [:index, :values]

  get 'tipentries' => 'tips#values'

  # 
  # Admin Namespace
  #
  namespace :admin do
    get '/' => 'dashboard#index'
    # admin/users
    devise_scope :user do
      get 'users' => 'dashboard#index'
      get "users/new" => "users#new"
      post 'users/new' => "users#create"
    end

    # admin/users
    resources :users
  end
end 
