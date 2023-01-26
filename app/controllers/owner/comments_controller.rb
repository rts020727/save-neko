class Owner::CommentsController < ApplicationController
  
  def destroy
    @photo = Photo.find(params[:photo_id])
    Comment.find(params[:id]).destroy
  end
  
end
