Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  authenticated :user do
    root 'books#index', as: :authenticated_root
  end
  unauthenticated do
    root 'pages#home'
  end
  resources :books, only: [:index, :new, :create]
end
