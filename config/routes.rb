Rails.application.routes.draw do
  root to: 'pages#index'

  resources :customers, only: :create
end
