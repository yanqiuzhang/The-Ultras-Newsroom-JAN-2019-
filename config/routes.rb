Rails.application.routes.draw do
    devise_for :users
    resources :articles, only: [:index, :show]
    root controller: :articles, action: :index
    
    namespace :journalist do
        resources :articles
    end

    namespace :editor do
        resources :articles
    end
end