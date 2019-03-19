class Editor::ArticlesController < ApplicationController
    before_action :check_editor, only: [:create, :new]
    before_action :authenticate_user!, only: [:create, :new]

    def new
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to new_editor_article_path, notice: 'Article was successfully created.'
        else
            redirect_to new_editor_article_path, alert: 'You have to fill out all the fields'
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if params[:approved] == "true" 
            @article.update_attributes(approved: true)
            redirect_to new_editor_article_path, notice: 'Article was successfully published.'
        else 
         if params[:approved] == true
            redirect_to new_editor_article_path, notice: 'Article was not successfully published.'
         end
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to new_editor_article_path, notice: 'Article was successfully deleted.'
    end

    private

    def check_editor
        if user_signed_in? && current_user.editor?
            true
        else
            redirect_to root_path, notice: 'Permission denied.'
        end
    end

    def article_params
        params.require(:article).permit(:title, :content, :lead, :approved)
    end 
end