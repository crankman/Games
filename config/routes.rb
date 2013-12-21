Games::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'games#index'
  resources :games
  get 'contacto'    => 'games#contacto'
end
