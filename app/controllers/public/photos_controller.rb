class Public::PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = Comment.new
  end
end
