class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all.approved
    render jsonL articles
  end
end
