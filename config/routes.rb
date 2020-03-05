Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get :my_swaps, to: 'pages#my_swaps'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: %i[index show new create destroy] do
    resources :swaps, only: %i[new create]
    member do
      get :genre
      get :confirmation
    end
  end
  resources :swaps, only: :show
  resources :bookclubs, only: %i[index show]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
