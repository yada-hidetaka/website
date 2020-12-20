class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.new
  end

  def new
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.save
    redirect_to article_path(@article)
  end

  def edit
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :image)
  end
end
