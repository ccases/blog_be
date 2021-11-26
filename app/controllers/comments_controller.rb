class CommentsController < ApplicationController
  before_action :set_article
  # before_action :set_comment, only:[:edit, :update, :destroy]
  

  # def new
  #   @comment = @article.comments.build
  # end

  # def edit
  # end

  # def update
  #   if @comment.update(comment_params)
  #     redirect_to article_path(@article), notice: "Updated a comment"
  #   else
  #     flash[:error] = "Blank field"
  #     render :edit
  #   end
  # end

  # def destroy
  #   @comment.destroy
  #   redirect_to article_path(@article)
  # end

  def create
    @comment = @article.comments.build(comment_params)

    if @comment.save
      redirect_to article_path(@article)
    else
      @comments = @article.comments
      render 'articles/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  # def set_comment
  #   @comment = Comment.find(params[:id])
  # end
end
