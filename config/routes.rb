Rails.application.routes.draw do
  resources :stories

  devise_for :users

  get "pages/:page" => 'pages#page', as: 'page' 

  root 'pages#home'
end
