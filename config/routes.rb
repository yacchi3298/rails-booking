Rails.application.routes.draw do

  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :users, only: [:show]

  root to: "home#top"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end