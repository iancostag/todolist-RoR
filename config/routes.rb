Rails.application.routes.draw do
  root to: "sessoes#new"
  get "usuarios/new"
  get "usuarios/create"
  # cruds
  resources :tarefas
  resources :listas
  get "up" => "rails/health#show", as: :rails_health_check
  # cadastro de usuarios
  get  "/cadastro", to: "usuarios#new",    as: :cadastro
  post "/usuarios", to: "usuarios#create", as: :usuarios

  # login sessoes
  get    "/login",  to: "sessoes#new"
  post   "/login",  to: "sessoes#create"
  delete "/logout", to: "sessoes#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
