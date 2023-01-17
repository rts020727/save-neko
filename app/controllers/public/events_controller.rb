class Public::EventsController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @shop = Shop.find(params[:shop_id])
    @event = @shop.events.find(params[:id])
  end
end
