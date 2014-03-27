Scheduler::Application.routes.draw do
  root to: "home#index"

  ###############################
  ##########   APIs   ###########
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
    resources :schedules
  end

  #
  # => API namespace for tip JSON data
  #
  namespace :api do
    get 'tips/:time' => 'tips#tip_data'
    get 'totals/:time' => 'tips#total_data'
  end
  #########   /APIs   ###########
  ###############################
  

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

  # Default resources
  # Must be down at the bottom of routes.rb to make sure it's the last 
  # possible resolved route due to it's empty path.
  resource :user, except: [:new, :create], path: '' do 
    get '/' => "home#index"
    match '/edit' => "users#update", via: [:put, :patch]

    # Sub namespace for editing/updating availability and profile information
    scope 'manage' do 
      # GET - renders forms
      get 'availability' => 'users#edit_availability'
      get 'profile' => 'users#edit_profile'

      # PUT/PATCH - performs update logic
      match 'availability' => 'users#update_availability', via: [:put, :patch]
      match 'profile' => 'users#update_profile', via: [:put, :patch]
    end

    # No need for resourceS for tips
    resource :tips, except: [:update, :destroy, :show] do 
      get '/' => 'tips#index'
      get 'export/:time' => 'tips#export', as: 'export'
    end
    resource :schedule, only: [:show, :update, :edit]
  end
end 
