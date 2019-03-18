Rails.application.routes.draw do
    devise_for :users
    resources :articles, only: [:index, :new, :create, :show]
    root controller: :articles, action: :index
    resources :articles, only: [:index, :show]
    resources :categories do
        resources :articles, only: [:index]
    end
end