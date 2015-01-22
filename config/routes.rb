Rails.application.routes.draw do
  resources :fragments

  resources :poems

  resources :stories

  resources :users, only: [:show]

  devise_for :users, :path => '', :path_names => {sign_in: 'login', sign_out: 'logout'}
  
  get "pages/:page" => 'pages#page', as: 'page' 

  root 'pages#home'
end
