Rails.application.routes.draw do


  get 'admin/index'

  get 'article/show'

  resources :articles
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  match '/signup', to: 'users#new', via: 'get'

  root to: 'index#index'

  match '/show', to: 'articles#show', via: 'get'
  match '/admin', to: 'admin#index', via: 'get'
  match '/users', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/about', to: 'index#about', via: 'get'
  match '/knowledge', to: 'knowledge#index', via: 'get'
  match '/signout', to: 'sessions#destroy',   via: 'delete'
  match '/article/new', to: 'articles#new', via: 'get'

  # make sure this rule is the last one
end
