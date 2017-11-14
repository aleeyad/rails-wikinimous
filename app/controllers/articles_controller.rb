class ArticlesController < ApplicationController

  before_action :find_article, only: [:edit, :update, :destroy, :show]

  def index
    @articles = Article.all
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def new
    @article = Article.new
  end

  def update
  end

  def edit
    @article.update(article_params)
    @article.save
    redirect_to @article
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
