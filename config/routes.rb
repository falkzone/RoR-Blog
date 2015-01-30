DemoBlog::Application.routes.draw do
  get "user_sessions/new"

  get "user_sessions/create"

  get "user_sessions/destroy"

  resources :users


  root :to => 'posts#index'

  resources :posts do
    resources :comments, :only => [:create, :destroy]
  end
  
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  
  resources :pages
  match 'about', :to => 'pages#about'
  match 'impress', :to => 'pages#impress'
  match 'contact', :to => 'pages#contact'
  
end
