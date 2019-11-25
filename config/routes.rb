Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :likes]
  resources :likes, only: [:create, :destroy]

   post "likes/:tweet_id/create" => "likes#create"
   post "likes/:tweet_id/destroy" => "likes#destroy"
   get "users/:user_id/likes" => "users#likes"

   post "unlikes/:tweet_id/create" => "unlikes#create"
   post "unlikes/:tweet_id/destroy" => "unlikes#destroy"
   get "users/:user_id/likes" => "users#unlikes"
end
