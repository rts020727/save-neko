class Public::PhotosController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @photos = Photo.page(params[:page]).per(9).order("updated_at DESC")
  end

  def show
    @photo = Photo.find(params[:id])
    @comment = PhotoComment.new
  end
end
