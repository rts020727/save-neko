class Public::CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    comment = current_user.comments.new(comment_params)
    comment.photo_id = @photo.id
    comment.save
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    comment = @photo.comments.find_by(user_id: current_user.id)
    comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:photo_comment)
  end
end
