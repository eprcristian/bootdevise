Rails.application.routes.draw do
  root to: 'authors#index'
  devise_for :users
  resources :authors
end

  ##namespace :admin do
    ##get 'home/index'
  ##end
  ##
  ##root to: "home#index"