class Public::ShopsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @shops = Shop.where(is_deleted: 0).page(params[:page]).per(5).order('updated_at DESC')
  end

  def show
    @shop = Shop.find(params[:id])
    @cats = @shop.cats.page(params[:page]).per(3).order('updated_at DESC')
    @events = @shop.events
  end
end
