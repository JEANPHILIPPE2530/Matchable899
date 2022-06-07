Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: %i[index show new create] do
    resources :offers, only: %i[index new create]
  end
  resources :offers, only: %i[edit update destroy]

  resources :developers

  resources :matches, only: :show

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :users, only: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
