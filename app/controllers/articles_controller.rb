class ArticlesController < ApplicationController
    protect_from_forgery
    before_action :authenticate_user!, only: [:create, :new]
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
       
    private

    def article_params
        params.require(:article).permit(:title, :content, :lead)
    end     
end