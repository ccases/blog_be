class ArticlesController < ApplicationController
  before_action :set_article, only:[:edit, :update, :destroy]
  
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    set_article
  end

  def update
    set_article
    if @article.update(article_params)
      redirect_to articles_path, notice: "Updated an article"
    else
      flash[:error] = "Blank field"
      render :edit
    end
  end

  def destroy
    set_article
    
    @article.destroy
    redirect_to articles_path
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path
    else
      flash[:error] = "Blank field"
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :author, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end