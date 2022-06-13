Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: %i[index show new create] do
    resources :offers, only: %i[index new create]
  end
  resources :offers, only: %i[edit update destroy]

  resources :developers, only: %i[index show]

  resources :matches, only: :index

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

    # JP
  # --------- Start
  # get "/matches" => 'matches#show', as: :matches
  post "matches/approve/developer/:id", to: "matches#approve", as: :approve_developer
  post "matches/decline/developer/:id", to: "matches#decline", as: :decline_developer
  post "matches/approve/company/:id", to: "matches#approve", as: :approve_company
  post "matches/decline/company/:id", to: "matches#decline", as: :decline_company
  # post "get/full_profile/id" => "profile#profile", as: :full_profile
  # post "get/message/id" => "matches#profile", as: :message
  # --------- End

  resources :users, only: :show

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
