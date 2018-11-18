class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_pararms)
    if @article.save
      flash[:notice] = "Articles was succesfully created"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_pararms
      params.require(:article).permit(:title, :description)
    end

end