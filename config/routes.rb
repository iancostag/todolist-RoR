Rails.application.routes.draw do
  devise_for :usuarios, controllers: {
  sessions: "usuarios/sessions",
  registrations: "usuarios/registrations",
  passwords: "usuarios/passwords",
  confirmations: "usuarios/confirmations",
  unlocks: "usuarios/unlocks"
  }
  unauthenticated do
    root to: "home#index", as: :unauthenticated_root
  end

  devise_scope :usuario do
    root to: "tarefas#index"
  end
  # get "usuarios/new" sem devise
  # get "usuarios/create"
  # cruds
  get "/tarefas/hoje", to: "tarefas#hoje", as: :tarefas_hoje
  resources :tarefas
  resources :listas
    get "paginas/sobre"
  get "up" => "rails/health#show", as: :rails_health_check
  # cadastro de usuarios sem devise
  # get  "/cadastro", to: "usuarios#new",    as: :cadastro
  # post "/usuarios", to: "usuarios#create", as: :usuarios

  # login sessoes sem devise
  # get    "/login",  to: "sessoes#new"
  # post   "/login",  to: "sessoes#create"
  # delete "/logout", to: "sessoes#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
