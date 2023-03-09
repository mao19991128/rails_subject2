Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/show'
  get 'reservations/index'
  get 'rooms/index'
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations
  resources :user
  get "users/show" => "users#show"
  get "users/profile" =>"users#profile"
  get "users/profile_edit" =>"users#profile_edit"
end
