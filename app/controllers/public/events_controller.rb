class Public::EventsController < ApplicationController
  def index
  end

  def show
    @shop = Shop.find(params[:shop_id])
    @event = @shop.events.find(params[:id])
  end
end
