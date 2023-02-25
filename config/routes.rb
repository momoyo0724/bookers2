Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"

  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:show, :edit]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  get 'homes/about', to: 'homes#about'

devise_scope :user do
  get '/sign_out', to: 'devise/sessions#destroy'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
