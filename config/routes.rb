Rails.application.routes.draw do
    devise_for :users
    resources :articles, only: [:index, :new, :create, :show]
    root controller: :articles, action: :index

    namespace :editor do
        resources :articles
    end
end