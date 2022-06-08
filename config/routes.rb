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

    # JP
  # --------- Start
  # get "/matches" => 'matches#show', as: :matches 
  # post "/approve/developer/:id", to: "matches#approve", as: :approve_user
  # post "/decline/developer/:id" => "matches#decline", as: :decline_user
  # post "/approve/company/:id", to: "matches#approve", as: :approve_user
  # post "/decline/company/:id" => "matches#decline", as: :decline_user
  # post "get/full_profile/id" => "profile#profile", as: :full_profile
  # post "get/message/id" => "matches#profile", as: :message
  # --------- End

  resources :users, only: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
