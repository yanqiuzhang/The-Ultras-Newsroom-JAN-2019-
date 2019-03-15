class ArticlesController < ApplicationController
    protect_from_forgery
    def index
        @articles = Article.all
    end

    def new
        if_
    end

    def create
        @article = Article.new(article_params)
       
        @article.save
        redirect_to new_article_path, notice: 'Article was successfully created.'
    end
       
    private
    def article_params
        params.require(:article).permit(:title, :content, :lead)
    end 
end
