Rails.application.routes.draw do
    root controller: :articles, action: :index
    resources :categories do
        resources :articles, only: [:index]
    end
end