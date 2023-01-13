class Owner::PhotosController < ApplicationController
  before_action :authenticate_shop!
  
  def new
    @photo = Photo.new
  end
  
  def index
    @photos = current_shop.photos
  end
  
  def create
    @photo = Photo.new(photo_params)
    @photo.shop_id = current_shop.id
    if @photo.save
      flash[:notice] = "投稿が成功しました！"
      redirect_to owner_photo_path(@photo.id)
    else
      @photos = current_shop.photos
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end
  
  def show
    @photo = Photo.find(params[:id])
  end
  
  def edit
    @photo = Photo.find(params[:id])
  end
  
  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      flash[:notice] = "編集に成功しました！"
      redirect_to owner_photo_path(@photo.id)
    else
      flash.now[:alert] = "編集に失敗しました"
      render :edit
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to owner_photos_path
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:title, :content, :image)
  end
  
end
