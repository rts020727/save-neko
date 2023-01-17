class Public::CatsController < ApplicationController
  
  def index
    @shop = Shop.find(params[:shop_id])
    @cats = @shop.cats
  end

end
