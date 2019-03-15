Rails.application.routes.draw do
  devise_for :users
    resources :articles, only: [:index, :new, :create]
    root controller: :articles, action: :index
end