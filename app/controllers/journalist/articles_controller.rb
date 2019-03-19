class Journalist::ArticlesController < ApplicationController
    before_action :check_journalist
    before_action :authenticate_user!

    def index
        @articles = Article.all
    end

    def new
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)
       
        if @article.save
            redirect_to new_journalist_article_path, notice: 'Article was successfully created.'
        else
            redirect_to new_journalist_article_path, alert: 'You have to fill out all the fields'
        end
    end
    
    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
       
        if @article.update(article_params)
            redirect_to journalist_article_path, notice: 'Article was successfully updated.'
        else
            redirect_to @article, notice: 'Article was not updated.'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        
        redirect_to journalist_articles_path, notice: 'Article was successfully deleted.'
    end

    private

    def check_journalist
        if user_signed_in? && current_user.journalist?
            true
        else
            redirect_to root_path, notice: 'Permission denied.'
        end
    end

    def article_params
        params.require(:article).permit(:title, :content, :lead)
    end 
end