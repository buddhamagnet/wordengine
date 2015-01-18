Rails.application.routes.draw do
  devise_for :users

  get "pages/:page" => 'pages#page', as: 'page' 

  root 'pages#home'
end
