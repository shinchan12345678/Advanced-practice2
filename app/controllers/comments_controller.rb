class CommentsController < ApplicationController
  def create
    comment=Comment.new(comment_params)
    comment.user_id=current_user.id
    comment.book_id=params[:book_id]
    comment.save
    redirect_to request.referer
  end

  def destroy
    comment=Comment.find(params[:id])
    comment.destroy
    redirect_to request.referer
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
