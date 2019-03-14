Rails.application.routes.draw do
  devise_for :users
    resources :articles, only: [:index]
    root controller: :articles, action: :index
end