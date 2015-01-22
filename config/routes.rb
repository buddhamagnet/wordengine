Rails.application.routes.draw do
  resources :fragments

  resources :poems

  resources :stories

  devise_for :users

  get "pages/:page" => 'pages#page', as: 'page' 

  root 'pages#home'
end
