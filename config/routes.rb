Scheduler::Application.routes.draw do
  root to: "home#index"

  devise_for :users, :controllers => { :registrations => "admin/users"}, :skip => [:registrations]
  as :user do
    match 'users/sign_up', to: redirect('/'), via: [:get, :post]
  end
  resources :users

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
