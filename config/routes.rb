Rails.application.routes.draw do
  get 'reservations/index'
  get 'rooms/index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations
  get "users/show" => "users#show"
  get "users/profile" =>"users#profile"
  get "users/profile_edit" =>"users#profile_edit"
end
