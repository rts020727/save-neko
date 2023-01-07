class Owner::ShopsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def unsubscribe
    @shop = Shop.find(params[:id])
  end

  def withdraw
    @shop = Shop.find(params[:id])
    @shop.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end
end
