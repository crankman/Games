Games::Application.routes.draw do
  root 'site#index'
  get 'juego'       => 'site#juego'
  get 'contacto'    => 'site#contacto'
end
