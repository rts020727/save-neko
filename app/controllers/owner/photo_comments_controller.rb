class Owner::PhotoCommentsController < ApplicationController
  
  def destroy
    @photo = Photo.find(params[:photo_id])
    PhotoComment.find(params[:id]).destroy
  end
  
end
