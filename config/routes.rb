Games::Application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  root 'games#index'
  resources :games
  get 'contacto'    => 'games#contacto'
end
