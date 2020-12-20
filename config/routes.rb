Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/edit'
  devise_for :users
  root to: "home#index"
  resources :users
end
