class Public::CatsController < ApplicationController
  def index
    @shop = Shop.find(params[:shop_id])
    @cats = @shop.cats
  end

  def show
    @cat = Cat.find(params[:id])
  end
end
