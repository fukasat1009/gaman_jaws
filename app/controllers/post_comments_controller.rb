class PostCommentsController < ApplicationController
  def create
  	target = Target.find(params[:target_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.target_id = target.id
    comment.save
    redirect_to target_path(target)
  end
  def destroy
    PostComment.find_by(id: params[:id], target_id: params[:target_id]).destroy
    redirect_to target_path(params[:target_id])
  end
  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
