class Public::PhotoCommentsController < ApplicationController
  
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = current_user.photo_comments.new(comment_params)
    @comment.photo_id = @photo.id
    # コメントがセーブできなければ、error.js.erbを呼び出す
    unless @comment.save
      render 'error'
    end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    PhotoComment.find(params[:id]).destroy
  end

  private

  def comment_params
    params.require(:photo_comment).permit(:comment)
  end
  
end
