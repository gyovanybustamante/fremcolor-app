Rails.application.routes.draw do
  resources :tinta_serigrafia_productos
  resources :insumos_serigrafia_productos
  resources :maquinaria_serigrafia_productos
  resources :repuestos_serigrafia_productos
  resources :quimicos_serigrafia_productos
  resources :tinta_sublimacion_productos
  resources :impresoras_sublimacion_productos
  resources :planchas_sublimacion_productos
  resources :papel_sublimacion_productos
  resources :insumos_sublimacion_productos
  resources :graficos_productos
  resources :quimicos_productos
  resources :seguridad_productos
  resources :marcas
  resources :blogs
  resources :mensajes
  resources :catalogos
  resources :servicios
  resources :promocions
  resources :cursos

  root 'cursos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
