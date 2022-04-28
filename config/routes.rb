Rails.application.routes.draw do
  get 'searchs/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get "home/about"=>"homes#about"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :comments,only: [:create,:destroy]
    resource :favorites,only: [:create,:destroy]
  end
  resources :users, only: [:index,:show,:edit,:update] do
    member do
      get :following,:followers
    end
  end
  resources :relationships, only: [:create,:destroy]
  get "searchs"=>"searchs#search",as: :search

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end