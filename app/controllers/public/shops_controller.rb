class Public::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    @cats = @shop.cats.page(params[:page]).per(3).order('updated_at DESC')
    @events = @shop.events
  end
end
