class CommentsController < ApplicationController
  def create
    @n_article = NArticle.find(params[:n_article_id])
    @comment = @n_article.comments.create(params[:comment].permit(:name, :body))
    redirect_to n_article_path(@n_article)
  end
end
