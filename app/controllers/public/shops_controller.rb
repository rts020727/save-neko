class Public::ShopsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @shops = Shop.where(is_deleted: 0).page(params[:page]).per(5).order('updated_at DESC')
  end

  def show
    @shop = Shop.find(params[:id])
    @cats = @shop.cats.page(params[:page]).per(3).order('updated_at DESC')
    @events = @shop.events
    @current_month_events = @shop.events.where(start_time: Time.now.all_month)
    @photos = @shop.photos.page(params[:page]).per(3).order('updated_at DESC')
  end
  
  def shop_photos
    @shop = Shop.find(params[:id])
    @photos = @shop.photos.page(params[:page]).per(6).order('updated_at DESC')
  end
end
