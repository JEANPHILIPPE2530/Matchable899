Rails.application.routes.draw do
  # get 'errors/not_found'
  # get 'errors/internal_server_error'
  devise_for :users

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  root to: 'pages#home'

  resources :companies, only: %i[index show new create] do
    resources :matches, only: %i[index create]
    resources :chatrooms, only: :create

  end
  resources :offers, only: %i[edit update destroy]

  resources :developers do
    resources :matches, only: %i[index create]
    resources :chatrooms, only: :create
  end

  resources :chatrooms, only: %i[index show new] do
    resources :messages, only: :create
  end

    # JP
  # --------- Start
  # get "/matches" => 'matches#show', as: :matches
  # post "matches/approve/developer/:id", to: "matches#approve", as: :approve_developer
  # post "matches/decline/developer/:id", to: "matches#decline", as: :decline_developer
  # post "matches/approve/company/:id", to: "matches#approve", as: :approve_company
  # post "matches/decline/company/:id", to: "matches#decline", as: :decline_company
  # post "get/full_profile/id" => "profile#profile", as: :full_profile
  # post "get/message/id" => "matches#profile", as: :message
  # --------- End

  resources :users, only: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
