Rails.application.routes.draw do
  devise_for :users
  get '/' => "home#top"

  namespace :admin do
    resources :users, only: [:index, :show, :destroy]
  end

    resources :info, only: [:show, :new, :create, :edit, :update, :destroy]


  resources :article, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
