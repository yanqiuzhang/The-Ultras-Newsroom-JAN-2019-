class ArticlesController < ApplicationController
    protect_from_forgery
    before_action :check_journalist, only: [:create, :new]
    before_action :check_subscriber, only: [:show]
    before_action :authenticate_user!, only: [:create, :new]
    
    def index
        @categories = Category.all
        if params[:category].present?
            @articles = Category.find_by(name: params[:category]).articles
        else
            @articles = Article.all
        end
    end

    def new   
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        article = Article.new(article_params)
       
        if article.save
            redirect_to new_article_path, notice: 'Article was successfully created.'
        else
            redirect_to new_article_path, alert: 'You have to fill out all the fields'
        end
    end
       
    private

    def check_journalist
        if user_signed_in? && current_user.journalist?
            true
        else
            redirect_to root_path, notice: 'Permission denied.'
        end
    end

    def check_subscriber
        if Article.find(params[:id]).premium? == true 
            if user_signed_in? && current_user.subscriber?
                true
            else
                redirect_to root_path, notice: 'To read this premium article, you need to become a subscriber.'
            end
        else
            true
        end    
    end

    def article_params
        params.require(:article).permit(:title, :content, :lead)
    end     
end