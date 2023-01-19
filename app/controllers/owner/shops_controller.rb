class Owner::ShopsController < ApplicationController
  before_action :authenticate_shop!
  

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end
  
  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to owner_shop_path(@shop)
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
  
  private
  
  def shop_params
    params.require(:shop).permit(:name, :name_kana, :address, :phone_number, :opening, :closed, :image)
  end
end
