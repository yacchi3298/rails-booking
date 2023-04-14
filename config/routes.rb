Rails.application.routes.draw do

  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'home#top'

  resources :users, only: [:index,:show,] do
    member do
      get 'own'
    end
  end
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end