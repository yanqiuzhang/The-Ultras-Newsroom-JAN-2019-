class ArticlesController < ApplicationController
    def index
        @categories = Category.all
            if params[:category].present?
                @articles = Category.find_by(name: params[:category]).articles
            else
                @articles = Article.all
            end
    end
    
    def show
        @article = Article.find(params[:id])
    end
end