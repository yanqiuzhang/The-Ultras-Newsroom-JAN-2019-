class Journalist::ArticlesController < ApplicationController
    
    def new
        @articles = Article.all
    end

    def create
        article = Article.new(article_params)
       
        if article.save
            redirect_to new_journalist_article_path, notice: 'Article was successfully created.'
        else
            redirect_to new_journalist_article_path, alert: 'You have to fill out all the fields'
        end
    end
    
    def edit
        @article = Article.find(params[:id])
    end

    def show
        @article = Article.find(params[:id])
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
       
        redirect_to new_journalist_article_path
    end
end