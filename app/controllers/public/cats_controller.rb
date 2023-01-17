class Public::CatsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @shop = Shop.find(params[:shop_id])
    @cats = @shop.cats
  end

end
