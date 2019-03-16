Rails.application.routes.draw do
    resources :articles, only: [:index, :show]
    resources :categories do
        resources :articles, only: [:index]
    end
end