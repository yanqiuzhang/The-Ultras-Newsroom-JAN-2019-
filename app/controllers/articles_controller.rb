class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        @categories = Category.all
    end
end
