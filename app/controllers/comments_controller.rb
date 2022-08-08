class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to gift_path(@comment.gift)
    else
      @gift = @comment.gift
      @comments = @gift.comments
      render "gifts/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, gift_id: params[:gift_id])
  end
end
