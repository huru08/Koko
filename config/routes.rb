Rails.application.routes.draw do
  get '/' => "home#top"



  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }


  namespace :admin do
    resources :users, only: [:index, :show, :destroy]
  end

    resources :info, only: [:show, :new, :create, :edit, :update, :destroy]

    get 'article/admin/users/:id' => 'admin/users#show'


    resources :article  do  #articlesコントローラへのルーティング  
      resources :comments, only: [:create]  #commentsコントローラへのルーティング
    end


  #resources :article, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
