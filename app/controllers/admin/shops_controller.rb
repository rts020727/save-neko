class Admin::ShopsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_shop, except: [:index]
  
  def index
    @shops = Shop.all
  end

  def show
  end

  def edit
  end
  
  def update
    if @shop.update(shop_params)
      redirect_to admin_shop_path(@shop.id)
    else
      render :edit
    end
  end
  
  private
  
  def set_shop
    @shop = Shop.find(params[:id])
  end
  
  def shop_params
    params.require(:shop).permit(:name, :email, :is_deleted)
  end
end
