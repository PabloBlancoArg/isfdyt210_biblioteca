Rails.application.routes.draw do
  resources :loans
  resources :books
  devise_for :users, :path_prefix => 'my'
  resources :users
  resources :friends
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
