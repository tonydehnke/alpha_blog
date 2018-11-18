class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article]
    @article = Article.new(article_pararms)
    @article.save
    redirect_to articles_show(@article)
  end

  def show
  end

  private
    def article_pararms
      params.require(:article).permit(:title, :description)
    end

end