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
    resource :schedule, only: [:show, :update, :edit]
  end
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
    resources :schedule
  end

  #
  # => API namespace for tip JSON data
  #
  namespace :api do
    get 'tips/:time' => 'tips#tip_data'
    get 'totals/:time' => 'tips#total_data'
  end

  # Default resources
  # Must be down at the bottom of routes.rb to make sure it's the last 
  # possible resolved route due to it's empty path.
  resource :user, only: [:update, :edit, :show], path: '' do
    get '/' => "home#index"
    resources :tips, except: [:update, :destroy]
  end
end 
