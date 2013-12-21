Games::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'site#index'
  get 'juego'       => 'site#juego'
  get 'contacto'    => 'site#contacto'
end
